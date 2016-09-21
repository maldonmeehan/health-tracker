class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.date :day

      t.timestamps
    end
  end
end
