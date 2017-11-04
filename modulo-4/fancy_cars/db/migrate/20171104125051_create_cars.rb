class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :company
      t.string :color
      t.integer :year
      t.float :price
      t.date :birth_date
      t.string :model

      t.timestamps
    end
  end
end
