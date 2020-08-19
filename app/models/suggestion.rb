class Suggestion < ApplicationRecord
  belongs_to :collaborator
  belongs_to :project
  has_many :suggestion_votes
  validates :description, presence: :true


end
