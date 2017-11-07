class Challenge < ApplicationRecord
  belongs_to :project
  has_many :bugs
end
