class MachinesController < ApplicationController
  
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
    redirect_to machines_index_path
  end

  private

  def machine_params
    params.require(:machine).permit(:type, :capacity, :power, :brand, :function, :price, :user_id)
  end
end
