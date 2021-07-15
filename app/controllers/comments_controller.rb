class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.post = Post.find(params[:post_id])

    if @comment.save
      render json: @comment
    else
      render json: @comment.errors, status: 422
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
