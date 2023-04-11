class HousesController < ApplicationController
  def index
    @houses = House.all
    render json: @houses
  end

  def show
    @houses = House.find(params[:id])
    render json: @houses
  end

  def new
    @house = current_user.houses.build
  end

  def create
    @house = current_user.build(link_params)

    respond_to do |format|
      if @house.save
        format.html { redirect_to @house, notice: 'Link was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @house.errors, status: :unprocessable_entity }

      end
      format.json { render :show, status: :created, location: @house }
    end
  end

  private

  def house_params
    params.require(:house).permit(:name, :image, :price, :location, :description, :bedroom_number)
  end
end
