class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @machine = Machine.find(params[:machine_id])
    @user = current_user
  end

  def create
    @booking = Booking.new(booking_params)
    @machine = Machine.find(params[:machine_id])
    @booking.machine = @machine
    @booking.user = current_user
    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @user = current_user
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
