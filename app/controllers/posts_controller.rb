class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    @posts = Post.all
  end

  def new
    @stamps = Stamp.all
  end

  def create
    logger.debug(post_params)
    Post.create(post_params)
  end

  private
  def post_params
    params.permit(:content ,:stamp_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
