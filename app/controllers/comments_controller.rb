class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create( params[:comment].permit(:post_id, :name, :body) )

    if @comment
      redirect_to @post
    end
  end
end
