class Bug < ApplicationRecord
  belongs_to :challenge
  has_many :solutions
end
