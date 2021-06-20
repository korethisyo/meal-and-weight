class SearchController < ApplicationController
  # 食事内容検索
  def search
    @content = params[:content]
    @meals = Meal.search_for(@content).page(params[:page])
  end

  # ユーザー情報検索
  def find
    @word = params[:word]
    @users = User.search_for(@word).page(params[:page])
  end
end
