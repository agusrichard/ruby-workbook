class Api::V1::UsersController < ApplicationController
  before_action :authorize_request, except: :create
  def index
    @users = User.all
    render json: @users, except: [:password_digest]
  end

  def show
    user = User.find(params[:id])
    render json: user.as_json(except: [:password_digest])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user.as_json(except: [:password_digest]), status: :created
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def update
    if @current_user
      @current_user.update({description: params[:user][:description]})
      render json: { message: 'User is successfully updated' }, status: 200
    else
      render json: { error: 'Unable to update user'}, status: 400
    end
  end

  def destroy
    if @current_user
      @current_user.destroy
      render json: { message: 'User is successfully deleted' }, status: 200
    else
      render json: { error: 'Unable to delete user' }, status: 400
    end
  end

  private
  def user_params
    params.permit(:username, :email, :password)
  end
end
