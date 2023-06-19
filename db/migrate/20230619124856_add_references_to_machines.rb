class AddReferencesToMachines < ActiveRecord::Migration[7.0]
  def change
    add_reference :machines, :user, null: false, foreign_key: true
  end
end
