class CollaboratorsController < ApplicationController
  def destroy
    @collaborator = Collaborator.find(params[:id])
    authorize @collaborator
    @collaborator.destroy
    redirect_to project_path(@collaborator.role.project)
  end
end
