require 'rails_helper'

RSpec.describe Post, type: :model do
  context '#Comment association' do
    it 'should increment comments_count' do
      post = Post.new(name: "Apple vs Android")
      post.comments.new(content: "Go Apple!")
      post.save
      expect(Comment.count).to eq(1)
      expect(post.comments_count).to eq(1)
    end
  end

  it 'should persist a post' do
    Post.create(name: "Apple vs Android")
    expect(Post.count).to eq(1)
  end
end
