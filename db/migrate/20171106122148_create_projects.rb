class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description, default: ""
      t.string :category, default: ""
      t.timestamp :start_date
      t.timestamp :end_data
      t.references :department

      t.timestamps
    end
  end
end
