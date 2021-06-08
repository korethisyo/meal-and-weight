class PostCommentsController < ApplicationController
  def create
    @meal = Meal.find(params[:meal_id])
    @post_comment = PostComment.new(post_comment_params)
    @post_comment.user_id = current_user.id
    @post_comment.meal_id = @meal.id
    if @post_comment.save
      redirect_to meal_path(@meal.id)
    else
      render :show
    end
  end

  def destroy
    @post_comment = PostComment.find_by(id: params[:id], meal_id: params[:meal_id])
    @post_comment.destroy
    redirect_to meal_path(params[:meal_id])
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
