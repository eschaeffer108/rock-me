class Api::CommentsController < ApiController
  def index
    @comments = Comment.where(ride_id: params[:comment_id])
    render json: @comments
  end

  def show
    @comments = Comment.find(params[:comment_id])
    render json: @comments
  end 
end
