class EditPenaltyFieldsToBool < ActiveRecord::Migration
  def change
    change_column :games, :home_score_pt, :boolean
    change_column :games, :away_score_pt, :boolean    
  end
end
