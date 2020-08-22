class Suggestion < ApplicationRecord
  belongs_to :collaborator
  belongs_to :project
  has_many :suggestion_votes
  validates :description, presence: :true

  def average_rating
    ratings = self.suggestion_votes
    return ratings.average(:rating)
  end


end
