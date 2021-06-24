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
    @post_comment = PostComment.new
  end

  def edit
    @meal = Meal.find(params[:id])
    # 他のユーザーの投稿した食事編集のページには遷移できない
    if @meal.user_id != current_user.id
      redirect_to meal_path(@meal.id)
    end
  end

  def update
    @meal = Meal.find(params[:id])
    if @meal.update(meal_params)
      redirect_to meal_path(@meal.id)
    else
      render :edit
    end
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to user_path(@meal.user.id)
  end

  private

  def meal_params
    params.require(:meal).permit(:date, :menu_image, :category, :menu_detail, meal_menus_attributes: [:id, :meal_id, :name, :_destroy])
  end
end
