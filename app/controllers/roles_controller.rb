class RolesController < ApplicationController

  def new
    @project_roles = Project.find(params[:project_id]).roles
    @role = Role.new
    @project = Project.find(params[:project_id])
    @role.project = @project
    authorize @role
    authorize @project
  end

  def create
    @role = Role.new(role_params)
    @role.project = Project.find(params[:project_id])
    authorize @role
    if @role.save
      redirect_to projects_path(Project.find(params[:project_id]))
    else
      render :new
    end
  end

  def destroy
    @role.destroy
    redirect_to projects_path
  end

  private

  def role_params
    params.require(:role).permit(:name)
  end

end
