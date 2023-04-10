class HousesController < ApplicationController
  def index
    @houses = House.all
    render json: @houses
  end

  def show
    @houses = House.find(params[:id])
  end

  def create
    @houses = House.new(house_params)
    if @houses.save
      render json: @houses, status: :created
    else
      render json: { error: @houses.errors }, status: :unprocessable_entity
    end
  end

  def update
    @houses = House.find(params[:id])
    if @houses.update(house_params)
      render json: @houses
    else
      render json: { error: @houses.errors }, status: :unprocessable_entity
    end
  end

  private

  def house_params
    params.require(:house).permit(:name, :image, :price, :location, :description, :bedroom_number)
  end
end
