class WeightsController < ApplicationController
  def new
    @weight = Weight.new
  end

  def index
    @weights = Weight.all.page(params[:page])
    # 体重のデータ取得(y軸）
    gon.weight = Weight.where(user_id: current_user.id).pluck(:weight)
    # 日付のデータ取得(x軸）
    gon.date = Weight.where(user_id: current_user.id).pluck(:date)
  end

  def create
    @weight = Weight.new(weight_params)
    @weight.user_id = current_user.id
    if @weight.save
      redirect_to weights_path
    else
      render :new
    end
  end

  def edit
    @weight = Weight.find(params[:id])
  end

  def update
    @weight = Weight.find(params[:id])
    if @weight.update(weight_params)
      redirect_to weights_path
    else
      render :edit
    end
  end

  private

  def weight_params
    params.require(:weight).permit(:date, :weight, :body_fat)
  end
end
