class CreateChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :challenges do |t|
      t.string :name
      t.text :description, default: ""
      t.string :duration, default: "--:--"
      t.integer :points, default: 0
      t.string :category, default: ""
      t.string :level, default: ""
      t.references :project

      t.timestamps
    end
  end
end
