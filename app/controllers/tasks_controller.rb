class TasksController < ApplicationController
  def create
    @planner = Planner.find(params[:planner_id])
    @task = @planner.tasks.create(task_params)
    redirect_to planner_path(@planner)
  end

  private
  def task_params
    params.require(:task).permit(:task)
  end

end
