class QuestionAttempt < ApplicationRecord
  after_update :set_answers

  belongs_to :quiz_attempt
  belongs_to :question

  def set_answers
    self.update_column(:correct, Answer.find(self.answer_id).correct)
  end
end
