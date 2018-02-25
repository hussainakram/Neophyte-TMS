class CreateUserProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :user_projects do |t|
    	t.references :user
      	t.references :project

     	t.timestamps
    end
  end
end
