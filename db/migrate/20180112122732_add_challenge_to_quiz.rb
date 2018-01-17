class AddChallengeToQuiz < ActiveRecord::Migration[5.1]
  def change
    remove_column :quizzes, :challenge_id
    add_reference :quizzes, :challenge, index: true
  end
end
