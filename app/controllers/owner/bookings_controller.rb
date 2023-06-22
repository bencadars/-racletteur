class Owner::BookingsController < ApplicationController
  def index
    @bookings = Booking.includes(:machine).where(machines:{user: current_user})
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = "Accepted"
    @booking.save
    redirect_to owner_bookings_path, notice:"Your booking was validated! An email will be sent to the cheese lover."
  end

end
