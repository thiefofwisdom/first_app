class ProjectTaksController < ApplicationController
  # GET /project_taks
  # GET /project_taks.json
  def index
    @project_taks = ProjectTak.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @project_taks }
    end
  end

  # GET /project_taks/1
  # GET /project_taks/1.json
  def show
    @project_tak = ProjectTak.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project_tak }
    end
  end

  # GET /project_taks/new
  # GET /project_taks/new.json
  def new
    @project_tak = ProjectTak.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project_tak }
    end
  end

  # GET /project_taks/1/edit
  def edit
    @project_tak = ProjectTak.find(params[:id])
  end

  # POST /project_taks
  # POST /project_taks.json
  def create
    @project_tak = ProjectTak.new(params[:project_tak])

    respond_to do |format|
      if @project_tak.save
        format.html { redirect_to @project_tak, notice: 'Project tak was successfully created.' }
        format.json { render json: @project_tak, status: :created, location: @project_tak }
      else
        format.html { render action: "new" }
        format.json { render json: @project_tak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /project_taks/1
  # PUT /project_taks/1.json
  def update
    @project_tak = ProjectTak.find(params[:id])

    respond_to do |format|
      if @project_tak.update_attributes(params[:project_tak])
        format.html { redirect_to @project_tak, notice: 'Project tak was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project_tak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_taks/1
  # DELETE /project_taks/1.json
  def destroy
    @project_tak = ProjectTak.find(params[:id])
    @project_tak.destroy

    respond_to do |format|
      format.html { redirect_to project_taks_url }
      format.json { head :no_content }
    end
  end
end
