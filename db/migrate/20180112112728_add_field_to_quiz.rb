class AddFieldToQuiz < ActiveRecord::Migration[5.1]
  def change
    add_reference :quizzes, :challenge, index: true
    remove_index(:quizzes, name: 'index_quizzes_on_project_id')
  end
end
