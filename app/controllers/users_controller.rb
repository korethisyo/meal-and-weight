class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    #@user.sex_before_type_cast
    if @user.id != current_user.id
      redirect_to user_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user.id)
    else
      render :edits
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :nick_name, :user_image, :sex, :height, :target_weight, :introduction)
  end
end
