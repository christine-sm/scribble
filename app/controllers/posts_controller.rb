class PostsController < ApplicationController
  def index
    @posts = Post.all.order(:id).reverse
  end

  def new
    @post = Post.new
  end

  def create
    puts "*" * 50
    puts "I created a post"
  end

end
