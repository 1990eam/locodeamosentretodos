class SuggestionsController < ApplicationController
  before_action :set_project, only: [:index, :new, :create]

  def index
    # no muestra suggestions de otro project porque suggestions esta nesteado en project?
    @suggestions = policy_scope(Suggestion)
  end


  def new
    @suggestion = Suggestion.new
    @suggestion.project = @project
    authorize @suggestion
  end

  def create
    @suggestion = Suggestion.new(suggestion_params)
    authorize @suggestion
    @suggestion.project = @project
    @suggestion.collaborator = Collaborator.find(current_user.id)
    @suggestion.save
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def suggestion_params
    params.require(:suggestion).permit(:description)
  end

end
