class CreateBugs < ActiveRecord::Migration[5.1]
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :description, default: ""
      t.string :status, default: ""
      t.references :challenges

      t.timestamps
    end
  end
end
