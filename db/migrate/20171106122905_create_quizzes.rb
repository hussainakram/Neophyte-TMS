class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.string :time_allowed, default: "--:--"
      t.integer :no_of_questions, default: 0
      t.integer :pass_score, default: 0
      t.references :projects

      t.timestamps
    end
  end
end
