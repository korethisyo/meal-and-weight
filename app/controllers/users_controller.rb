class UsersController < ApplicationController
  def index
    @users = User.all.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
    @meals = @user.meals.all.page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
    # プロフィール編集ページへ移動できるのはログインユーザーのみ
    if @user.id != current_user.id
      redirect_to user_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :nick_name, :user_image, :sex, :height, :target_weight, :introduction)
  end
end
