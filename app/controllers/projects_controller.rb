class ProjectsController < ApplicationController
  before_action :set_project, only: [:show]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @projects = policy_scope(Project)
  end

  def new
    @project = Project.new
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    authorize @project
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def show
    authorize @project
  end

  def my_projects
    @projects = current_user.projects
    authorize @projects
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :photo)
  end

  def set_project
    @project = Project.find(params[:id])
    authorize @project
  end
end
