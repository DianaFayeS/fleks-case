class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :reg_nr
      t.text :description
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
