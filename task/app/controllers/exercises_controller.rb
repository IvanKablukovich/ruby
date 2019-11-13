class ExercisesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user.email
    @tasks = Exercise.all
  end

  def new
    @task = Exercise.new
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
    params.require(:exercise).permit(:subject, :description, :assignee)
  end
end
