class MealsController < ApplicationController
  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user_id = current_user.id
    @meal.save
    binding.pry
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def meal_params
    params.require(:meal).permit(:date, :menu_image, :menu_detail)
  end
end
