class CommentsController < ApplicationController
  def index
    @posts = Comment.all
  end

end
