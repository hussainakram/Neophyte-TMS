class Quiz < ApplicationRecord
  belongs_to :challenge
  has_many :quiz_attempts
  has_many :users, through: :quiz_attempts
  has_many :questions, dependent: :destroy, inverse_of: :quiz
  accepts_nested_attributes_for :questions, reject_if: lambda { |a| a[:statement].blank? }, allow_destroy: true

  def quiz_status(user)
    if self.quiz_attempts.where(user_id: user.id).present?
      self.quiz_attempts.where(user_id: user.id).last.status
    end
  end
end
