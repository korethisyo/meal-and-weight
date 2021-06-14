class WeightsController < ApplicationController
  def index
    @weight = Weight.new
  end

  def create
    @weight = Weight.new(weight_params)
    @weight.user_id = current_user.id
    @weight.save
    redirect_to users_path
  end

  def update

  end

  private

  def weight_params
    params.require(:weight).permit(:weight, :body_fat)
  end
end
