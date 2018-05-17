class Api::V1::ConcertsController < ApiController
  def show
    render json: { concert: Concert.all }
  end

  def index
    render json: {concert: Concert.all }
  end
end
