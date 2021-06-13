class PostCommentsController < ApplicationController
  def create
    @meal = Meal.find(params[:meal_id])
    @post_comment = PostComment.new(post_comment_params).set_meal(current_user, @meal)
    @post_comment.save
    render :create
    #redirect_to meal_path(@meal.id)　< コメント非同期通信
  end

  def destroy
    @meal = Meal.find(params[:meal_id])
    @post_comment = PostComment.find_by(id: params[:id], meal_id: params[:meal_id])
    @post_comment.destroy
    #redirect_to meal_path(params[:meal_id]) <　コメント非同期通信
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
