class ChangeGameHomeAwayScorePtColumn < ActiveRecord::Migration
  def up
    remove_column :games, :home_score_pt
    remove_column :games, :away_score_pt

    add_column :games, :home_score_pt, :boolean
    add_column :games, :away_score_pt, :boolean
  end

  def down
    remove_column :games, :home_score_pt
    remove_column :games, :away_score_pt

    add_column :games, :home_score_pt, :integer
    add_column :games, :away_score_pt, :integer
  end
end
