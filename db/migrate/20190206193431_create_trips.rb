class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :name
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
