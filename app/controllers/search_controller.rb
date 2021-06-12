class SearchController < ApplicationController
  def search
    @content = params[:content]
    @method = params[:method]
    @meal = Meal.search_for(@content, @method)
  end
end
