class CreateQuizAttempts < ActiveRecord::Migration[5.1]
  def change
    create_table :quiz_attempts do |t|
      t.integer :earned_marks
      t.string :status
      t.integer :attempted_questions
      t.integer :correct_answers
      t.string :time_taken, default: "--:--"
      t.references :user
      t.references :quiz

      t.timestamps
    end
  end
end
