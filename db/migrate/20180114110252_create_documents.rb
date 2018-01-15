class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
    	t.references :resource
      	t.timestamps
    end
  end
end
