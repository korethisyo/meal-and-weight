class Meal < ApplicationRecord
  belongs_to :user
  attachment :menu_image
  enum category: {朝食:0, 昼食:1, 夕食:2, その他:3}
end
