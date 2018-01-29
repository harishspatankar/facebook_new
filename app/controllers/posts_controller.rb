class PostsController < ApplicationController
  def show
    @post = Post.find(params[:user_id])
  end

  def new
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)
    redirect_to user_posts_path
  end

  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.all
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
