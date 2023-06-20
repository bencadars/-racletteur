class AddFieldsToMachines < ActiveRecord::Migration[7.0]
  def change
    remove_column :machines, :type, :string
    add_column :machines, :name, :string
    add_column :machines, :description, :text
  end
end
