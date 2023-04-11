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
        format.json { render :show, status: :created, location: @house }
      else

        format.html { redirect_to @house, notice: 'Link was       successfully created.' }

         format.json { render :show, status: :created, location:  @house }
      else
         format.html { render :new }
         format.json { render json: @house.errors, status: :unprocessable_entity }

        format.json { render :show, status: :created, location: @house }
      else
        format.html { render :new }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
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
