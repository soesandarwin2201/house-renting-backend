class AuthenticationController < ApplicationController
  # skip_before_action :verify_authenticity_token
  before_action :authorize_request, except: :login
  # post /auth/login

  def login
<<<<<<< HEAD
    user = User
          .find_by(email: params["user"]["email"])
          .try(:authenticate, params["user"]["password"])
=======
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
>>>>>>> ae44f640657df42664d737ab5967687d07806a35

  end
end


