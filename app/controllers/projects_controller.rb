class ProjectsController < ApplicationController
  before_action :set_project, only: [:show]

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
    if @project.save!
      redirect_to @project
    else
      render :new
    end
  end

  def show
    authorize @project
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :photo)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
