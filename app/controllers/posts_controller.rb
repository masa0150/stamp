class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show, :search]
  def index
    @posts = Post.includes(:user).order("created_at DESC")
  end

  def new
    @stamps = Stamp.all
    @posts = Post.all
  end

  def create
    logger.debug(post_params)
    Post.create(post_params)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def edit
    @stamps = Stamp.all
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  def search
    @posts = Post.search(params[:keyword])
  end
  private
  def post_params
    params.permit(:content ,:stamp_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
