require 'rails_helper'

RSpec.describe Comment, type: :model do
  context '#validations' do
    it 'should validate content length to be min 10' do
      comment = build(:comment_empty)
      comment.valid?
      expect(comment.errors.messages).to include(:content)
      expect(comment.valid?).to be false
    end

    it 'should accept a good content' do
      comment = build(:comment, post: create(:post))
      comment.valid?
      expect(comment.valid?).to be true
    end
  end
end
