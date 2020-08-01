class ApplicationRequestsController < ApplicationController

  def index
    @applications = policy_scope(ApplicationRequest).order(created_at: :asc)
  end

  def new
    @application = ApplicationRequest.new
    @project = Project.find(params[:project_id])
    authorize @application
  end

  def create
    @application = ApplicationRequest.new
    authorize @application
  end

  private

  def application_params
    params.require(:application_request).permit(:about_me)
  end
end
