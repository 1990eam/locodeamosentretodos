class Requirement < ApplicationRecord
  belongs_to :role
  belongs_to :technology
  belongs_to :level
end
