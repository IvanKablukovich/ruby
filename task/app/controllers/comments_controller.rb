class CommentsController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    if @task.comments.create(comment_params).valid?
      # @comment = @task.comments.create(comment_params)
      flash[:success] = 'Comment Saved!'
    else
      flash[:notice] = 'Error!'
    end
    redirect_to task_path(@task)
  end

  # def destroy
  #  @comment = Comment.find(params[:id])
  #  @comment.destroy
  #  redirect_to task_path
  # end
  # <%= link_to "delete", task_path(:comment_id), method: :delete %>

  private

  def comment_params
    params.require(:comment).permit(:field, :username)
  end
end
