class Project < ApplicationRecord
  belongs_to :department, optional: true
  has_many :challenges
  has_many :quizzes
  has_many :users
end
