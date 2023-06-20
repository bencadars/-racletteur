class MachinesController < ApplicationController

  def show
    @machine = Machine.find(params[:id])
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
    redirect_to machines_path
  end

  private

  def machine_params
    params.require(:machine).permit( :category, :capacity, :power, :brand, :function, :price, :user_id)
  end
end
