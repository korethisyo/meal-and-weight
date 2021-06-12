class MealMenu < ApplicationRecord
  belongs_to :meal

  # def self.search_for(content, method)
    # if method == 'perfect'
      # MealMenu.where(name: "#{content}")
    # else
      # MealMenu.where('name LIKE ?', "%#{content}%")
    # end
  # end
end
