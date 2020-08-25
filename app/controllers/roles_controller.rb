class RolesController < ApplicationController

  def new
    @project_roles = Project.find(params[:project_id]).roles
    @role = Role.new
    @project = Project.find(params[:project_id])
    @role.project = @project
    authorize @role
    authorize @project
  end

  def edit
    # @project = params[:project_id] por que no va esto? no lo necesita el form?
    # por que usa la ruta de role que no esta nesteada?
    @role = Role.find(params[:id])
    authorize @role
  end

  def update
    @role = Role.find(params[:id])
    @role.update(role_params)
    authorize @role
  end

  def create
    @project = Project.find(params[:project_id])
    @role = Role.new(role_params)
    @role.project = @project
    authorize @role


    # los skills de un rol no son propios del role sino que estan asociados a un requirement
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
    @role = Role.find(params[:id])
    authorize @role
    @project = @role.project
    @role.destroy
    redirect_to project_path(@project, tab: "roles")
  end

  private

  def role_params
    params.require(:role).permit(:name, :description)
  end

  def requirement_params
    params.require(:requirement).permit(:technology_id, :level_id)
  end

end
