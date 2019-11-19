class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    if @task.valid?
      @task.save
      flash[:success] = 'Saved!'
      redirect_to @task
    else
      flash.now.notice = 'Fields empty'
      render 'new'
    end
  end

  private

  def task_params
    params.require(:task).permit(:subject, :description, :assignee, :user_id)
  end
end
