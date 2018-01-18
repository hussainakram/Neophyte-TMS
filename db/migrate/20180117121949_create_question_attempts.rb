class CreateQuestionAttempts < ActiveRecord::Migration[5.1]
  def change
    create_table :question_attempts do |t|
      t.integer :answer_id
      t.boolean :correct
      t.references :quiz_attempt, foreign_key: true

      t.timestamps
    end
  end
end
