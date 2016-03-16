class CommentsController < ApplicationController
  def index
    @comments = Comment.all.order(:id)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create! comment_params

    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Song.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Song.find(params[:id])
    @comment.update comment_params

    redirect_to post_comments_path(@post, @comment)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Song.find(params[:id])
    @comment.destroy

    redirect_to post_comments_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_body)
  end

end
