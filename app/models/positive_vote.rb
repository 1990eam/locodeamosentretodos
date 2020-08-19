class PositiveVote < ApplicationRecord
  belongs_to :suggestion
  belongs_to :collaborator
end
