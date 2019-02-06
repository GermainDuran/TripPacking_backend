class CreateBelongings < ActiveRecord::Migration[5.2]
  def change
    create_table :belongings do |t|
      t.string :name
      t.string :image
      t.integer :suitcase_id

      t.timestamps
    end
  end
end
