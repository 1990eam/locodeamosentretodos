class SuggestionsController < ApplicationController


  def index
    @project = params[:project_id]
    @suggestions = @project.suggestions
  end


  def new

  end

  def create

  end




end
