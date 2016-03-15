class CommentsController < ApplicationController
  def index
    @comments = Comment.all.order(:id)
  end

  def create
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

end
