class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def show
        @task = Task.find(params[:id])
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.create(task_params)
        redirect_to tasks_path(@task)
    end

    def edit
    end

    def update
    end

    def delete
    end

    private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
