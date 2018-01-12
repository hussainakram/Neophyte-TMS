class AlterResources < ActiveRecord::Migration[5.1]
  def change
  	change_table :resources do |t|
      t.references :challenge
    end

    change_table :challenges do |t|
      t.references :resource
    end
  end
end
