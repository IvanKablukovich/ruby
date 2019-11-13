class CommentsController < ApplicationController
  def create
    @task = Exercise.find(params[:exercise_id])
    @comment = @task.comments.create(comment_params)
    redirect_to exercise_path(@task)
  end

  #def destroy
  #  @comment = Comment.find(params[:id])
  #  @comment.destroy
  #  redirect_to exercise_path
  #end
  #<%= link_to "delete", exercise_path(:comment_id), method: :delete %>

  private def comment_params
    params.require(:comment).permit(:field, :username)
  end
end
