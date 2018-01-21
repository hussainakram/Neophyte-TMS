class CreateUserChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :user_challenges do |t|
      t.string :status, default: ""
      t.references :user, foreign_key: true
      t.references :challenge, foreign_key: true

      t.timestamps
    end
    add_column :users, :points, :integer, default: 0
  end
end
