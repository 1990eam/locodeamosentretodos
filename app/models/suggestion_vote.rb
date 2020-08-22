class SuggestionVote < ApplicationRecord
  belongs_to :collaborator
  belongs_to :suggestion
  validates :rating, inclusion: { in: 0..5 }

end
