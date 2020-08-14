class ApplicationRequestsController < ApplicationController
  before_action :authenticate_user!
  skip_after_action :verify_authorized, only: [:my_project_request]
  def index
    @applications = policy_scope(ApplicationRequest)
  end

  def new
    @project = Project.find(params[:project_id])
    @application = ApplicationRequest.new
    authorize @application
  end

  def create
    @application = ApplicationRequest.new(application_params)
    authorize @application
    @application.user = current_user
    role = Role.find(params[:role_id])
    @application.role = role

    if @application.save
      redirect_to application_requests_path
    else
      # definir @project si se usa render, sino el view no encuentra @project y crashea
      @project = Project.find(params[:project_id])
      render :new
    end
  end

  def my_project_request
    @projects = current_user.projects
  end

  def accept
    @application = ApplicationRequest.find(params[:project_id])
    authorize @application
    @application.update(status: "accepted")
    redirect_to my_project_request_path(params[:project_id])
  end

  def decline
    @application = ApplicationRequest.find(params[:project_id])
    authorize @application
    @application.update(status: "declined")
    redirect_to my_project_request_path(params[:project_id])
  end

  private

  def application_params
    params.require(:application_request).permit(:about_me)
  end
end
