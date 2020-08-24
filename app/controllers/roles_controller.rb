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
    @project = Project.find(params[:project_id])
    @role = Role.new(role_params)
    @role.project = @project
    authorize @role



    if @role.save
      @requirement = Requirement.new(requirement_params)
      authorize @requirement
      @requirement.role = @role
      @requirement.save
      flash[:notice] = "Rol creado exitosamente"
      redirect_to project_path(@project, tab: "roles", anchor: "new-role-form")
    else
      flash[:alert] = "Algo salió mal, intentalo nuevamente"
      render :new
    end
  end

  def destroy
    @role.destroy
    redirect_to projects_path
  end

  private

  def role_params
    params.require(:role).permit(:name, :description)
  end

  def requirement_params
    params.require(:requirement).permit(:technology_id, :level_id)
  end

end
