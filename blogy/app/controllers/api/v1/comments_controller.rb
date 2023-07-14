class Api::V1::CommentsController < ApplicationController
  before_action :authorize_request
  before_action :find_post, only: [:index, :show, :create, :update, :destroy]
  before_action :find_comment, only: [:show, :update, :destroy]

  def index
    @comments = @post.comments
    render json: @comments
  end

  def show
    render json: @comment
  end

  def create
    @comment = @current_user.comments.new(comment_params)
    @comment.post = @post

    if @comment.save
      # Comment successfully created
      render json: @comment
    else
      # Handle validation errors or other failures
      render json: { error: @comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @comment.user_id == @current_user.id
      @comment.update(comment_params)
      render json: { message: 'Comment is successfully updated' }, status: 200
    else
      render json: { errors: @post.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def destroy
    if @comment.user_id == @current_user.id
      @comment.destroy
      render json: { message: 'Comment is successfully deleted' }, status: 200
    else
      render json: { error: 'Unable to delete comment'}, status: 400
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

  def find_comment
    begin
      @comment = @post.comments.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render json: { error: 'Comment not found' }, status: :not_found
    end
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
