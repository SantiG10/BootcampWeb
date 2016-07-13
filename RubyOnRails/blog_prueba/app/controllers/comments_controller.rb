class CommentsController < ApplicationController

  def new
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new
	end

  def create
    @post = Post.find(params[:post_id])
    comment = @post.comments.new(comment_params)
    comment.save
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:id,:content,:post_id)
  end

end
