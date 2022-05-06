require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Post model' do
    user = User.create name: 'dib', photo: 'photo_link', bio: 'wag1'
    post = Post.new author: user, title: 'hello', text: 'first post'

    before { post.save }

    it 'title must not be blank' do
      post.title = nil
      expect(post).to_not be_valid
    end
    # rubocop:disable Layout/LineLength
    it 'title must not exceed 250 characters.' do
      post.title = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum, rhoncus sit morbi facilisis ipsum pellentesque pellentesque. Nunc scelerisque ullamcorper nibh ut nunc. Ut magnis viverra vitae ut tellus lobortis. Odio eget elementum enim aliquam morbi facilisis morbi. Eget phasellus sed morbi'
      expect(post).to_not be_valid
      post.title = 'hello'
    end
    # rubocop:enable Layout/LineLength
    it 'comments_counter must be an integer greater than or equal to 0' do
      post.comments_counter = -1
      expect(post).to_not be_valid
      post.comments_counter = 0
    end

    it 'likes_counter must be an integer greater than or equal to 0' do
      post.likes_counter = -1
      expect(post).to_not be_valid
      post.likes_counter = 0
    end
  end
end
