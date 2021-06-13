class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.integer :user_id, null: false
      t.date :date, null: false
      t.string :menu_image_id, null: false
      t.integer :category, null: false, default: 0
      t.text :menu_detail, null: false

      t.timestamps
    end
  end
end
