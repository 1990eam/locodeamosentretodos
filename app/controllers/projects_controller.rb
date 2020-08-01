class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    authorize @projects
  end

  def new
    @project = Project.new
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    authorize @project
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end


end
