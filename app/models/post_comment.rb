class PostComment < ApplicationRecord
  belongs_to :user
  belongs_to :meal

  validates :comment, presence: true

  def written_by?(current_user)
    user.id == current_user.id
  end

  def nick_name
    user.nick_name
  end

  def set_meal(current_user, meal)
    self.user_id = current_user.id
    self.meal_id = meal.id
    self
  end
end
