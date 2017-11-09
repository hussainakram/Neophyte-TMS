class CreateCompanyUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :company_users do |t|
      t.references :user
      t.references :company

      t.timestamps
    end
  end
end
