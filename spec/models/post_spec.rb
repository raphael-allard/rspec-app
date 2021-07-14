require 'rails_helper'

RSpec.describe Post, type: :model do
  context '#persist post' do
    it 'should persist a post' do
      create(:post)
      expect(Post.count).to eq(1)
    end
  end

  context '#associations' do
    it 'should increment comments_count' do
      post = build(:post)
      post.comments << build(:comment)
      post.save
      expect(Comment.count).to eq(1)
      expect(post.comments_count).to eq(1)
    end
  end
end
