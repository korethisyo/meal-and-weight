class WeightsController < ApplicationController
  def index
    @weight_new = Weight.new
    # @weight = Weight.find(params[:id])
  end

  def create
    @weight_new = Weight.new(weight_params)
    @weight_new.user_id = current_user.id
    @weight_new.save
    redirect_to users_path
  end

  def update
    @weight = Weight.find(params[:id])
    @weight.update(weight_params)
    redirect_to users_path
  end

  private

  def weight_params
    params.require(:weight).permit(:weight, :body_fat)
  end
end
