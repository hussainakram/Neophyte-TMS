class Question < ApplicationRecord
  belongs_to :quiz
  has_many :question_attempts, dependent: :destroy

  has_many :answers, dependent: :destroy, inverse_of: :question
  accepts_nested_attributes_for :answers, reject_if: lambda { |a| a[:content].blank? }, allow_destroy: true
end
