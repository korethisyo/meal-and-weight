class FavoritesController < ApplicationController
  before_action :set_meal

  def create
    @favorite = current_user.favorites.new(meal_id: @meal.id)
    @favorite.save
  end

  def destroy
    @favorite = current_user.favorites.find_by(meal_id: @meal.id)
    @favorite.destroy
  end

  private

  # 上記で使用する@mealの値を先に取得
  def set_meal
    @meal = Meal.find(params[:meal_id])
  end
end
