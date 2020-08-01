class Level < ApplicationRecord
  has_many :skills
  validates :name, presence: true
  enum name: { junior: 0, semisenior: 1, senior: 2 }
end
