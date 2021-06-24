class ChangeColumnAddNullOnWeights < ActiveRecord::Migration[5.2]
  def change
    change_column_null :weights, :date, false
  end
end
