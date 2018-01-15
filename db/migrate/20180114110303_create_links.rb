class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
    	t.string :link
		t.references :resource
     	 t.timestamps
    end
  end
end
