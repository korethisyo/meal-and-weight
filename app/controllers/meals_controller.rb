class MealsController < ApplicationController
  def new
    @meal = Meal.new
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
  end

  def update
  end

  private

  def meal_params
    params.require(:meal).permit(:date, :menu_image, :category, :menu_detail)
  end
end
