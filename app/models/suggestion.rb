class Suggestion < ApplicationRecord
  belongs_to :collaborator
  belongs_to :project
end
