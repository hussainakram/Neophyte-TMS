class QuizAttempt < ApplicationRecord
  after_create :create_question_attempts
  belongs_to :user
  belongs_to :quiz
  has_many :question_attempts, dependent: :destroy, inverse_of: :quiz_attempt

  accepts_nested_attributes_for :question_attempts

  def create_question_attempts
    Quiz.find(self.quiz_id).questions.each do |q|
      q.question_attempts.where(question_id: q.id, quiz_attempt_id: self.id).first_or_create!
    end
  end

  def set_correct_answers
    self.update_column(:correct_answers, self.question_attempts.where(correct: true).count)
  end

  def set_attempted_answers
    self.update_column(:attempted_questions, self.question_attempts.where.not(answer_id: nil).count)
  end

  def set_earned_marks
    self.update_column(:earned_marks, self.correct_answers * 5)
  end

  def set_status
    pass_marks = (self.quiz.no_of_questions * 5)/2
    if self.earned_marks > pass_marks
      self.update_column(:status, "Passed")
    elsif self.earned_marks < pass_marks
      self.update_column(:status, "Failed")
    else
      self.update_column(:status, "Pending")
    end
  end
end
