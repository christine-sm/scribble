class CommentsController < ApplicationController
  def index
    @comments = Comment.all.order(:id)
  end

  def create
    @comment = Comment.create! comment_params
    redirect_to "/comments"
  end

  def new
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_body)
  end

end
