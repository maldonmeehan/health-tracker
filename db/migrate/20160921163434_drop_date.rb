class DropDate < ActiveRecord::Migration[5.0]
  def change
    drop_table :dates
  end
end
