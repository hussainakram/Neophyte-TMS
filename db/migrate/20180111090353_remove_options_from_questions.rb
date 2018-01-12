class RemoveOptionsFromQuestions < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :option1
    remove_column :questions, :option2
    remove_column :questions, :option3
    remove_column :questions, :option4
    remove_column :questions, :correct_option
  end
end
