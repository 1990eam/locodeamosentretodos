class ApplicationRequestsController < ApplicationController
  before_action :authenticate_user!

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

    if @application.save
      redirect_to application_requests_path
    else
      # definir @project si se usa render, sino el view no encuentra @project y crashea
      @project = Project.find(params[:project_id])
      render :new
    end
  end

  private

  def application_params
    params.require(:application_request).permit(:about_me)
  end
end
