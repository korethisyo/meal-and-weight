class Meal < ApplicationRecord
  belongs_to :user
  attachment :menu_image
end
