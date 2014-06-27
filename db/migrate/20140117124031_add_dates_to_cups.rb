class AddDatesToCups < ActiveRecord::Migration
  def change
    add_column :cups, :start_date, :date  
    add_column :cups, :end_date, :date      
    add_column :cups, :logo, :string          
  end
end
