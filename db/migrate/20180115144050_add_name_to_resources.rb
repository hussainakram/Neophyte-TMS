class AddNameToResources < ActiveRecord::Migration[5.1]
  def change 
  	rename_column :resources, :type, :name
  	change_column :resources, :name, :string, null: false
  end
end
