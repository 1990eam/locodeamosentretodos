class Suggestion < ApplicationRecord
  belongs_to :collaborator
  belongs_to :project
  has_many :suggestion_votes
  validates :description, presence: :true, length: { maximum: 100, minimum: 10,
    too_long: "%{count} es el màximo de caracteres. Se breve al describir la feature", too_short: "%{count} es el mìnimo de caracteres." }

  def average_rating
    ratings = self.suggestion_votes
    return ratings.average(:rating)
  end


  def user_vote(user)
    query = self.suggestion_votes.joins(:collaborator).where("collaborators.user_id = ?", user.id)
    if query.empty?
      return nil
    else
      return query.first.rating
    end
  end

end
