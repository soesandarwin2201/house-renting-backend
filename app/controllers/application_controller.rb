class ApplicationController < ActionController::API
  before_action :authorize_request
  attr_reader :current_user

  private

  def authorize_request
    header = request.headers['Authorization']
    header = header.split.last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
      if !@current_user.admin? && (params[:action] == "create" || params[:action] == "destroy")
        render json: { error: 'You are not authorized to perform this action' }, status: :unauthorized
      end
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end
end
