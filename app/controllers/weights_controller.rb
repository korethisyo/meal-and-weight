class WeightsController < ApplicationController
  def index
    @weight = Weight.new
    @weights = Weight.all

    gon.weight = Weight.where(user_id: current_user.id).pluck(:weight)
    gon.date = Weight.where(user_id: current_user.id).pluck(:date)

    # binding.pry

    # 日付のデータ取得(x軸）
    # @weight_by_day = @weights.group_by_day(:date).size
    # @graph_labels = @weight_by_day.map(&:first).to_json.html_safe

    # binding.pry
    # gon.weights = @weights
  end

  def create
    @weight = Weight.new(weight_params)
    @weight.user_id = current_user.id
    @weight.save
    redirect_to weights_path
  end

  def edit
    @weight = Weight.find(params[:id])
  end

  def update
    @weight = Weight.find(params[:id])
    @weight.update(weight_params)
    redirect_to weights_path
  end

  private

  def weight_params
    params.require(:weight).permit(:date, :weight, :body_fat)
  end
end
