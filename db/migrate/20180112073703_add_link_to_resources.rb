class AddLinkToResources < ActiveRecord::Migration[5.1]
  def change
  	change_table :resources do |t|
       t.string :link
    end
  end
end
