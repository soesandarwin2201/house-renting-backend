class AuthenticationController < ApplicationController
  # skip_before_action :verify_authenticity_token
  before_action :authorize_request, except: :login
  # post /auth/login

  def login
    @user = User.find_by(login_params)
    if @user
      token = JsonWebToken.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_i
      render json: { token:, exp: time.strftime('%m-%d-%Y %H:%M'),
                     username: @user.name }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end

  def login_params
    params.permit(:email, :password)
  end
end
