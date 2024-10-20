class TasksController < ApplicationController
  def index
      @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(create_params)
    if task.save
      redirect_to root_path
    else
      render 'new', status:unprocessable_entity
    end
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to root_path
  end

  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    if @task.update(update_params)
      redirect_to root_path
    else
      render 'edit', status: unprocessable_entity
    end
  end

  private
  def create_params
      params.require(:task).permit(:content, :due_date).merge(status: :pending)
  end

  def update_params
    params.require(:task).permit(:content, :due_date, :status)
  end

end
