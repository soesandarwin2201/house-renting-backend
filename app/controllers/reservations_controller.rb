class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.where(user_id: @current_user.id).includes(:house)
    @reservations = @reservations.map do |reservation|
      { reservation:, image: reservation.house.image, name: reservation.house.name }
    end
    render json: @reservations
  end

  def add
    @reservations = if current_user.houses
                      current_user.reservations.build(
                        params.require(:reservation).permit(:start_date, :end_date)
                        .merge(house_id: params[:house_id])
                      )
                    else
                      current_user.reservations.build(reservation_params)
                    end
    if @reservations.save
      render json: @reservations, status: :created
    else
      render json: { error: @reservations.errors }, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :house_id)
  end
end
