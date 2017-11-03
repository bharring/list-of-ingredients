class DrinksController < ApiController
  before_action :set_drink, only: [:show, :update, :destroy]

  # GET /drinks
  def index
    @drinks = Drink.all

    render json: @drinks
  end

  # GET /drinks/1
  def show
    render json: @drink
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drink
      @drink = Drink.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def drink_params
      params.require(:drink).permit(:title, :description, :steps, :source)
    end
end
