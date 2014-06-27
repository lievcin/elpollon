class AddShortNametoRound < ActiveRecord::Migration
  def change
    add_column :rounds, :short_name, :string    
  end
end
