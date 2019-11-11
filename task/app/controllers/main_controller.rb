class MainController < ApplicationController

  def index
    @tasks = Exercise.all
  end

  def show
    @task = Exercise.find(params[:id])
  end

  def create
    @task = Exercise.new(task_params)
    @task.save
    redirect_to @task
  end

  private
  def task_params
    params.require(:task).permit(:subject, :description)
  end
end
