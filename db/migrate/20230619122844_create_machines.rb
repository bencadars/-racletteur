class CreateMachines < ActiveRecord::Migration[7.0]
  def change
    create_table :machines do |t|
      t.string :type
      t.integer :capacity
      t.integer :power
      t.string :brand
      t.string :function
      t.integer :price
      # t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
