require 'rails_helper'

RSpec.describe Like, type: :model do
  subject do
    user = User.new(name: 'Richard', photo: '_url_', bio: 'nigeria', post_counter: nil)
    post = Post.create(title: 'baseLine', text: 'This is my post', comments_counter: 0, likes_counter: 0,user_id: user.id)
    Like.new(user_id: user.id, post_id: post.id)
  end

  before { subject.save }
  it 'user id not valid' do
    subject.user_id = 1
    expect(subject).to_not be_valid
  end

  # it 'Should be valid' do
  #   subject.text = 'This is my post'
  #   expect(subject).to be_valid
  # end

  it 'post id not valid' do
    subject.post_id = 1
    expect(subject).to_not be_valid
  end
end
