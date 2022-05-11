class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:comments, :likes)
  end

  def show
    @post = Post.includes(:comments, :likes).find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author = User.find(current_user.id)
    if @post.save
      redirect_to user_post_path(user_id: @post.author.id, id: @post.id), notice: 'Post was successfully created!'
    else
      render :new, alert: 'An error has occurred while creating the post'
    end
  end

  def destroy
    Comment.where(post_id: params[:id]).destroy_all
    Like.where(post_id: params[:id]).destroy_all
    Post.find(params[:id]).destroy

    redirect_to user_posts_path(params[:user_id]), success: 'Successfully deleted a post'
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
