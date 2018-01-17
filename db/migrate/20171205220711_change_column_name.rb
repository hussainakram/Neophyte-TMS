class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :projects, :end_data, :end_date
  end
end
