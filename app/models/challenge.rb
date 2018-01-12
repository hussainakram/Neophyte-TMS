class Challenge < ApplicationRecord
  belongs_to :project
  has_many :bugs
  has_many :resources
end
