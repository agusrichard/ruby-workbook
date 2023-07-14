class Api::V1::PostsController < ApplicationController
  before_action :authorize_request
  before_action :find_post, only: [:show, :update, :destroy]

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    render json: @post
  end

  def create
    post = @current_user.posts.new(post_params)
    if post.save
      render json: post,  status: :created
    else
      render json: { errors: post.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def update
    if @current_user.id == @post.user_id
      @post.update(post_params)
      render json: { message: 'Post is successfully updated' }, status: 200
    else
      render json: { errors: @post.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def destroy
    if @current_user.id == @post.user_id
      @post.destroy
      render json: { message: 'Post is successfully deleted' }, status: 200
    else
      render json: { error: 'Unable to delete post'}, status: 400
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

  def find_post
    begin
      @post = Post.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render json: { error: 'Post not found' }, status: :not_found
    end
  end
end
