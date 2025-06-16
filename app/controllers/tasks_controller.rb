class TasksController < ApplicationController

  def index
    @tasks = Task.all #solo plural el index siempre guarda un array
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)
    @task.user_id = current_user.id
    if @task.save
      respond_to do |format|
        format.html {redirect_to root_path, notice: "tarea guardada"}
        format.turbo_stream 
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
  end

  def delete
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :description, :date_due, :date_done, :estimated_hour, :status, :tag, :priority)
  end
end
