class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @machine = Machine.find(params[:machine_id])
    @booking = Booking.new
    @user = current_user
  end

  def create
    @machine = Machine.find(params[:machine_id])
    @booking = Booking.new(booking_params)
    @booking.machine = @machine
    @booking.user = current_user
    @booking.status = "Pending"
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
