class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]

  # GET /tasks or /tasks.json
  def index
    @tasks = Task.all
    render json: @tasks 
  end

  # GET /tasks/1 or /tasks/1.json
  def show
    @currtask = Tasks.all
    render json :@currtask
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks or /tasks.json
  def create
    @task = Task.new(task_params)
    @task.save
  end

  # PATCH/PUT /tasks/1 or /tasks/1.json
  def update
    @thislist = Task.find_by_id(params[:id])
    @thislist.update(status:true)
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    @currtask = Task.find_by_id(params[:id])
    @currtask.destroy
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:description, :status, :lists_id)
    end
