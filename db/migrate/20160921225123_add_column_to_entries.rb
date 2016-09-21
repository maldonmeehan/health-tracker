class AddColumnToEntries < ActiveRecord::Migration[5.0]
  def change
    change_table :entries do |t|
      t.integer :user_id
    end
  end
end
