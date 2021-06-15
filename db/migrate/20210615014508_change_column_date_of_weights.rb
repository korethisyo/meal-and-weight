class ChangeColumnDateOfWeights < ActiveRecord::Migration[5.2]
  def change
    change_column_null :weights, :date, :date, false
  end
end
