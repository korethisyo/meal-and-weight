class RemoveColumnFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :sex, :integer
    remove_column :users, :height, :float
    remove_column :users, :target_weight, :float
    remove_column :users, :introduction, :text
  end
end
