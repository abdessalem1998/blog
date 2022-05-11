class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.new(comment_params)

    if @comment.save
      redirect_to user_post_path(user_id: @comment.author.id, id: @comment.post.id),
                  notice: 'Comment was successfully created!'
    else
      render user_post_path(user_id: @comment.author.id, id: @comment.post.id),
             alert: 'An error has occurred while creating the comment.'
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to user_post_path(params[:user_id], params[:post_id]), alert: 'Successfully deleted comment'
  end

  private

  def comment_params
    params.permit(:text, :post_id)
  end
end
