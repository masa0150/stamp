class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    logger.debug(post_params)
    Post.create(post_params)
  end

  private
  def post_params
    params.permit(:content ,:stamp_id)
  end
end
