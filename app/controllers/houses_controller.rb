class HousesController < ApplicationController
  def index
    @houses = House.all
    render json: @houses
  end

  def show
    @houses = House.find(params[:id])
    render json: @houses
  end


  def create
    puts "Current House: #{current_user.id}"
    @house = current_user.houses.build(house_params)
      if @house.save
         render json: @house, status: :ok 
      else
         render json: @house.errors, status: :unprocessable_entity 
      end
  end

  def destroy
    house = House.find(params[:id])
    house.destroy
end

  private

  def house_params
    params.require(:house).permit(:name, :image, :price, :location, :description, :bedroom_number)
  end
end
