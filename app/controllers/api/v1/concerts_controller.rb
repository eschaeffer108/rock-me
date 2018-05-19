class Api::V1::ConcertsController < ApiController
  def index
    render json: {concert: Concert.all }
  end
end
