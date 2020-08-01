class Technology < ApplicationRecord
  has_many :requirements
  has_many :skills
  validates :name, presence: true
end
