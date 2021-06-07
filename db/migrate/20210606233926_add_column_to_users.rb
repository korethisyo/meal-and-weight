class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_image_id, :string
    add_column :users, :sex, :integer
    add_column :users, :height, :float
    add_column :users, :target_weight, :float
    add_column :users, :introduction, :text
  end
end
