class AddQuestionToQuestionAttempt < ActiveRecord::Migration[5.1]
  def change
    add_reference :question_attempts, :question, foreign_key: true
  end
end
