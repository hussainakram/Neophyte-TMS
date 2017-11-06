class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description, default: ""
      t.string :location, default: ""
      t.string :contact_no, default: ""
      t.string :email, default: ""
      t.string :ceo, default: ""
      t.string :category, default: ""

      t.timestamps
    end
  end
end
