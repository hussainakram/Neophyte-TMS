class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :statement
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.string :correct_option
      t.references :quiz

      t.timestamps
    end
  end
end
