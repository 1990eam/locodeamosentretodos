class Skill < ApplicationRecord
  belongs_to :user
  belongs_to :technology
  belongs_to :level
  validates :name, presence: true
end
