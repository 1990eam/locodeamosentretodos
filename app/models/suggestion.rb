class Suggestion < ApplicationRecord
  belongs_to :collaborator
  belongs_to :project
  has_many :positive_votes
  has_many :negative_votes


end
