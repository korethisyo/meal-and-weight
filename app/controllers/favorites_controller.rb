class FavoritesController < ApplicationController
  def create
    @meal = Meal.find(params[:meal_id])
    @favorite = current_user.favorites.new(meal_id: @meal.id)
    @favorite.save
    redirect_to request.referer
  end

  def destroy
    @meal = Meal.find(params[:meal_id])
    @favorite = current_user.favorites.find_by(meal_id: @meal.id)
    @favorite.destroy
    redirect_to request.referer
  end
end
