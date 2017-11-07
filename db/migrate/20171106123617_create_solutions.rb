class CreateSolutions < ActiveRecord::Migration[5.1]
  def change
    create_table :solutions do |t|
      t.text :description, default: ""
      t.string :link, default: ""
      t.references :bug

      t.timestamps
    end
  end
end
