class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.integer :step
      t.integer :calorie
      t.integer :minute
      t.integer :entry_id

      t.timestamps
    end
  end
end
