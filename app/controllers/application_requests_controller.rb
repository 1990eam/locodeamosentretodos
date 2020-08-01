class ApplicationRequestsController < ApplicationController

  def new
    application = ApplicationRequest.new
    authorize application
  end

  def create
  end
end
