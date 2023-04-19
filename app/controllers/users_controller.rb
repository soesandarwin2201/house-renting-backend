class UsersController < ApplicationController
  before_action :authorize_request, except: :create


  def index
    @users = current_user
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end

  def create
    @user = User.new(user_params)
    if @user.save
      token = JsonWebToken.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_i
<<<<<<< HEAD
      render json: { token: token, exp: time.strftime('%m-%d-%Y %H:%M'),
=======
      render json: { token:token, exp: time.strftime('%m-%d-%Y %H:%M'),
>>>>>>> 8b1ec8a (modified userscontroller)
                     user: @user }, status: :ok
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
