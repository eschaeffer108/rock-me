class CommentsController < ApplicationController
  def new
  end

  def index
    @comments = Comment.all
  end

  # def new
  #   @concert = Concert.find(params[:concert_id])
  #   @comment = Comment.new
  #   @user = current_user
  # end
  #
  # def create
  #   @concert = Concert.find(params[:concert_id])
  #   @comment = Comment.new(comment_params)
  #   @comment.concert = @concert
  #   @comment.user_id = current_user.id
  #
  #
  #   if @comment.save
  #     flash[:notice] = "Comment added successfully"
  #     redirect_to @concert
  #   else
  #     render action: "new"
  #   end
  # end
  #
  # private
  #
  # def comment_params
  #   params.require(:comment).permit(:body, :user_id, :concert_id)
  # end
end
