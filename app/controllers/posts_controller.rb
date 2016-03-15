class PostsController < ApplicationController
  def index
    @posts = Post.all.order(:id).reverse
  end

  def create
    @post = Post.create! post_params
    redirect_to "/posts/#{@post.id}"
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :post_body, :tag)
  end

end
