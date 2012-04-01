class ProjectTasksController < ApplicationController
  # GET /project_tasks
  # GET /project_tasks.json
  def index
    @project_tasks = ProjectTask.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @project_tasks }
    end
  end

  # GET /project_tasks/1
  # GET /project_tasks/1.json
  def show
    @project_task = ProjectTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project_task }
    end
  end

  # GET /project_tasks/new
  # GET /project_tasks/new.json
  def new
    @project_task = ProjectTask.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project_task }
    end
  end

  # GET /project_tasks/1/edit
  def edit
    @project_task = ProjectTask.find(params[:id])
  end

  # POST /project_tasks
  # POST /project_tasks.json
  def create
    @project_task = ProjectTask.new(params[:project_task])

    respond_to do |format|
      if @project_task.save
        format.html { redirect_to @project_task, notice: 'Project task was successfully created.' }
        format.json { render json: @project_task, status: :created, location: @project_task }
      else
        format.html { render action: "new" }
        format.json { render json: @project_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /project_tasks/1
  # PUT /project_tasks/1.json
  def update
    @project_task = ProjectTask.find(params[:id])

    respond_to do |format|
      if @project_task.update_attributes(params[:project_task])
        format.html { redirect_to @project_task, notice: 'Project task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_tasks/1
  # DELETE /project_tasks/1.json
  def destroy
    @project_task = ProjectTask.find(params[:id])
    @project_task.destroy

    respond_to do |format|
      format.html { redirect_to project_tasks_url }
      format.json { head :no_content }
    end
  end
end
