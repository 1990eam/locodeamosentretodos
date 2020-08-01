class Level < ApplicationRecord
  has_many :skills

  validates presence: true
end
