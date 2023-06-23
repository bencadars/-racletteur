class MachinesController < ApplicationController

  def show
    @machine = Machine.find(params[:id])
    @booking = Booking.new
  end

  def search
    query = params[:query]
    @results = Machine.search_by_name_and_description_and_brand(query)
    render :search_results
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

  private

  def machine_params
    params.require(:machine).permit( :category, :capacity, :power, :brand, :function, :price, :user_id, :photo)
  end
end
