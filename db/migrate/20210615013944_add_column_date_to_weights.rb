class AddColumnDateToWeights < ActiveRecord::Migration[5.2]
  def change
    add_column :weights, :date, :date
  end
end
