class Project < ApplicationRecord
  belongs_to :department, optional: true
  has_many :challenges
  has_many :quizzes, through: :challenges
  has_many :users
end
