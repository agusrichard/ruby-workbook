class Api::V1::LikesController < ApplicationController
  before_action :authorize_request
  before_action :find_post
  before_action :find_like, only: [:show, :destroy]

  def index
    render json: @post.liking_users, except: [:password_digest]
  end

  def show
    render json: @like.user, except: [:password_digest]
  end

  def create
    like = Like.new({user: @current_user, post: @post})
    if like.save
      render json: like
    else
      render json: { error: @comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    like = @post.likes.find(params[:id])
    if @current_user.id == like.user_id
      like.destroy
      render json: { message: 'Successfully unliked' }, status: 200
    else
      render json: { error: 'Unable to unlike the post'}, status: 400
    end
  end

  private
  def find_post
    begin
      @post = Post.find(params[:post_id])
    rescue ActiveRecord::RecordNotFound
      render json: { error: 'Post not found' }, status: :not_found
    end
  end

  def find_like
    begin
      @like = @post.likes.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render json: { error: 'Like not found' }, status: :not_found
    end
  end
end
