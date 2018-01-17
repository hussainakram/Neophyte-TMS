class Quiz < ApplicationRecord
  belongs_to :challenge
  has_many :quiz_attempts
  has_many :users, through: :quiz_attempts
  has_many :questions, dependent: :destroy, inverse_of: :quiz
  accepts_nested_attributes_for :questions, reject_if: lambda { |a| a[:statement].blank? }, allow_destroy: true
end
