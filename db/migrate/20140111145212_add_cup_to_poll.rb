class AddCupToPoll < ActiveRecord::Migration
  def change
    add_column :polls, :cup_id, :integer
  end
end
