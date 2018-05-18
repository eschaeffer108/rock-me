class Api::V1::CommentsController < ApiController
  protect_from_forgery unless: -> { request.format.json? }

  def index
    @comments = Comment.where(concert_id: params[:comment_id])
    render json: @comments
  end

  def create
    @concert = Concert.find(params[:concert_id])
    @comment = Comment.new(comment_params)
    @comment.concert = @concert
    @comment.user_id = current_user.id
    binding.pry
    if @comment.save
        flash[:notice] = "Comment added successfully"
        redirect_to @concert
    end


    render json: { message: "success!" }
  end


  def comment_params
    params.require(:comment).permit(:body, :user_id, :concert_id)
  end
end
