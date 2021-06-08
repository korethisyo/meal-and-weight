class Meal < ApplicationRecord
  belongs_to :user
  has_many :meal_menus, dependent: :destroy
  accepts_nested_attributes_for :meal_menus, allow_destroy: true

  attachment :menu_image
  enum category: {朝食:0, 昼食:1, 夕食:2, その他:3}
end
