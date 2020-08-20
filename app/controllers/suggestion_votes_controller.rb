class SuggestionVotesController < ApplicationController


  # suggestion_id:  va en params
  # collaborator_id: find?
  # created_at: nil,
  # updated_at: nil,
  # rating: va en params


  def create
    @vote = SuggestionVote.new
    authorize @vote

    @suggestion = params[:suggestion_id]
    @project = Project.find(params[:project_id])
    @collaborator = Collaborator.find_by(user: current_user.id)
    @vote.collaborator = @collaborator
    @vote.suggestion = Suggestion.find(params[:suggestion_id])
    @vote.rating = vote_params[:rating]
    # raise
    if @vote.save
      redirect_to project_path(@project)
      else
      redirect_to projects_path
    end
  end


  private

  def vote_params
    params.require(:suggestion_vote).permit(:rating, :suggestion_id)
  end



end
