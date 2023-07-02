class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :destroy]
  def index
    @users = User.all
    render json: @users, except: [:password]
  end

  def show
    render json: @user.as_json(except: [:password])
  end

  def create
    user = User.new(user_params)
    user.password = BCrypt::Password.create(params[:password])
    if user.save
      render json: user.as_json(except: [:password])
    else
      render error: { error: 'Unable to create user' }, status: 400
    end
  end

  def update
    if @user
      puts "params: #{params}"
      @user.update({description: params[:user][:description]})
      render json: { message: 'User is successfully updated' }, status: 200
    else
      render json: { error: 'Unable to update user'}, status: 400
    end
  end

  def destroy
    if @user
      @user.destroy
      render json: { message: 'User is successfully deleted' }, status: 200
    else
      render json: { error: 'Unable to delete user' }, status: 400
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
