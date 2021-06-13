class AddDefaultSexToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :sex, from: nil, to: "0"
  end
end
