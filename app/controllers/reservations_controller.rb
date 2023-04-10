class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  def show
    @reservations = Reservation.find(params[:id])
  end

  def create
    @reservations = Reservation.new(reservation_params)
    if @reservations.save
      render json: @reservations, status: :created
    else
      render json: { error: @reservations.errors }, status: :unprocessable_entity
    end
  end

  def update
    @reservations = Reservation.find(params[:id])
    if @reservations.update(reservation_params)
      render json: @reservations
    else 
      render json: { error: @reservations.errors }, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
