class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @post = Post.find(params[:id])
  end

  def new

  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
