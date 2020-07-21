class TasksController < ApplicationController
  def index
    @task = Task.new
    @task = Task.all
    @tasks = current_user.tasks
    if params[:id].present?
      set_task
    else
      @task = Task.new
    end
  end

  def create
    @task = current_user.tasks.new(task_params)
    respond_to do |format|
      if @task.save
        format.html { redirect_to tasks_path, norice: 'Task was successfully created.' }
        format.json
      else
        format.html { render :index }
        format.json
      end
    end
  end

  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { render :edit }
        format.json
      else
        format.html { render :edit }
        format.json
      end
    end
  end

  private

  def task_params
    params.permit(:task_name, :end_date).merge(user_id: current_user.id)
  end

end
