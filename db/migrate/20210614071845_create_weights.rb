class CreateWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :weights do |t|
      t.integer :user_id, null: false
      t.float :weight, null: false
      t.float :body_fat

      t.timestamps
    end
  end
end
