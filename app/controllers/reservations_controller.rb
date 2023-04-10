class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render json: @reservations
  end
end
