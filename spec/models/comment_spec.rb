require 'rails_helper'
RSpec.describe Comment, type: :model do
    subject do
        first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
        first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
      Comment.new(post_id: post.id, author_id: user.id, text: 'Test1')
    end
  
    before { subject.save }
  
    it 'author_id should be present' do
      subject.author_id = nil
      expect(subject).to_be valid
    end
  
    # it 'Should be valid' do
    #   expect(subject).to be_valid
    # end
  end
  