class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = policy_scope(Task) # Task.all
  end

  def new
    if current_user.admin?
      @task = Task.new
    else
      redirect_to home_path
      flash[:alert] = 'Access Denied!'
    end
  end

  def show
    @task = policy_scope(Task).find(params[:id])  # Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to @task
    else
      render 'edit'
    end
  end

  def create
    @task = Task.new(task_params)
    authorize @task
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
    params.require(:task).permit(:subject, :description, :assignee, :user_id, :status)
  end
end
