class Project < ApplicationRecord
  belongs_to :department, optional: true
  has_many :challenges
  has_many :quizzes, through: :challenges
  has_many :user_projects
  has_many :users, through: :user_projects
end
