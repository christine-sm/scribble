class PostsController < ApplicationController
  # Nice! I think you could just do Post.all.reverse and it would work the same since,
  # I believe that later entires will have a higher id :)
  def index
    @posts = Post.all.order(:id).reverse
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create! post_params
    # You could actually just write `@post` for shorten syntax
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update post_params

    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  # nice job defining private post_params!
  private
  def post_params
    params.require(:post).permit(:title, :post_body, :tag)
  end

end
