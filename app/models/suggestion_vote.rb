class SuggestionVote < ApplicationRecord
  belongs_to :collaborator
  belongs_to :suggestion
end
