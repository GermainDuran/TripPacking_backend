class CreateSuitcases < ActiveRecord::Migration[5.2]
  def change
    create_table :suitcases do |t|
      t.string :name
      t.string :category
      t.integer :trip_id

      t.timestamps
    end
  end
end
