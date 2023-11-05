class CommentsController < ApplicationController
  before_action :set_post, only: [:create]

  def create
    @comment = @post.comments.create(user: current_user, body: params[:comment_body])

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(
          "post#{@post.id}comments",
          partial: 'posts/post_comments',
          locals: { post: @post }
        )
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy = @comment.user && current_user
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
