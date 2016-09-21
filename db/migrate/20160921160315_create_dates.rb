class CreateDates < ActiveRecord::Migration[5.0]
  def change
    create_table :dates do |t|
      t.date :day
      t.integer :user_id

      t.timestamps
    end
  end
end
