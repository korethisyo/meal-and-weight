class RemoveSexFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :sex, default: 0
  end
end
