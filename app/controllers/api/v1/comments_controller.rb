class Api::V1::CommentsController < ApiController
  protect_from_forgery unless: -> { request.format.json? }

  def index
    @comments = Comment.where(ride_id: params[:comment_id])
    render json: @comments
  end

  def show
    @comments = Comment.find(params[:comment_id])
    render json: @comments
  end

  def create
    @concert = Concert.find(params[:concert_id])
    @comment = Comment.new(comment_params)

    if @comment.save
        flash[:notice] = "Comment added successfully"
        redirect_to @concert.id
      else
        render action: "new"
    render json: @comments
  end
end
