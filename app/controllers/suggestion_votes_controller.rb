class SuggestionVotesController < ApplicationController

  def create
    @vote = SuggestionVote.new
    authorize @vote

    @suggestion = params[:suggestion_id]
    @project = Project.find(params[:project_id])
    @collaborator = Collaborator.find_by(user: current_user.id)
    @vote.collaborator = @collaborator
    @vote.suggestion = Suggestion.find(params[:suggestion_id])
    @vote.rating = vote_params[:rating]
    if @vote.save
      flash[:notice] = "Votaste correctamente"
      redirect_to project_path(@project, tab: "suggestions", anchor: "suggestion-#{params[:suggestion_id]}")
    else
      flash[:alert] = "Algo salió mal :("
    end
  end

  private

  def vote_params
    params.require(:suggestion_vote).permit(:rating, :suggestion_id)
  end
end
