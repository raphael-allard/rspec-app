require 'rails_helper'

RSpec.describe Comment, type: :model do
  context '#validations' do
    it 'should validate content length to be min 10' do
      comment = Comment.new(content: 'Apple')
      comment.valid?
      expect(comment.errors.messages).to include(:content)
      expect(comment.valid?).to be false
    end
  end
end
