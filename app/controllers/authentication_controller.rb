class AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login
  # post /auth/login

  def login
    user = User
          .find_by(email: params["user"]["email"])
          .try(:authenticate, params["user"]["password"])

  end
end


