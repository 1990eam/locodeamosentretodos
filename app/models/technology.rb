class Technology < ApplicationRecord
  has_many :requirements
  has_many :skills
  has_many :users, through: :skills
  validates :name, presence: true
end
