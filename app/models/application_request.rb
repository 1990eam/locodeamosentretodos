class ApplicationRequest < ApplicationRecord
  belongs_to :role
  belongs_to :user
  validates :about_me, presence: true, length: { in: 10..300 }
end
