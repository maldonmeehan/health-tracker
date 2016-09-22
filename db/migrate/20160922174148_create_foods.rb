class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :item
      t.integer :calorie
      t.string :measurment
      t.integer :entry_id

      t.timestamps
    end
  end
end
