class CreateMealMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_menus do |t|
      t.references :meal, foreign_key: true, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
