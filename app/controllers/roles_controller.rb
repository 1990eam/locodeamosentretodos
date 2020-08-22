class RolesController < ApplicationController

  def new
    @project_roles = Project.find(params[:project_id]).roles
    @role = Role.new
    # @role.requirement.build
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
    raise
    @requirements = params[:requirements]
    @requirements.each do |requirement|
      requirement = Requirement.new
      requirement.role = @role
    end


    if @role.save
      flash[:notice] = "Role succesfully created"
      redirect_to project_path(@project, tab: "roles", anchor: "new-role-form")
    else
      flash[:alert] = "Something went wrong, try again"
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
