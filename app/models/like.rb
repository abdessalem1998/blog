class Like < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :post

  after_save :increment_likes_counter

  private
  Comment.create(post: first_post, author: second_user)
  def increment_likes_counter
    post.increment!(:likes_counter)
  end
end
