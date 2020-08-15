class Level < ApplicationRecord
  has_many :skills
  has_many :requirements
  validates :name, presence: true, inclusion: { in: ["junior", "semisenior", "senior", "master"] }
end
