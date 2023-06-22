class MachinesController < ApplicationController

  def show
    @machine = Machine.find(params[:id])
    @booking = Booking.new
  end

  def index
    @machines = Machine.all
  end

  def new
    @machine = Machine.new
  end

  def create
    @machine = Machine.new(machine_params)
    @machine.user_id = current_user.id
    @machine.save!
    redirect_to machine_path(@machine)
  end

  def exclude_banner?
    true
  end

  private

  def machine_params
    params.require(:machine).permit( :category, :capacity, :power, :brand, :function, :price, :user_id, :photo)
  end
end
