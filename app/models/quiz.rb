class Quiz < ApplicationRecord
  belongs_to :project
  has_many :quiz_attempts
  has_many :users, through: :quiz_attempts
  has_many :questions
end
