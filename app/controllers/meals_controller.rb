class MealsController < ApplicationController
  def new
    @meal = Meal.new
    @meal.meal_menus.build
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user_id = current_user.id
    if @meal.save
      redirect_to meal_path(@meal.id)
    else
      render :new
    end
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    @meal.update(meal_params)
    redirect_to meal_path(@meal.id)
  end

  private

  def meal_params
    params.require(:meal).permit(:date, :menu_image, :category, :menu_detail, meal_menus_attributes: [:meal_id, :name])
  end
end
