class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :kickoff
      t.integer :home_score
      t.integer :away_score
      t.integer :home_score_et
      t.integer :away_score_et
      t.integer :home_score_pt
      t.integer :away_score_pt
      t.integer :home_win
      t.integer :away_win      
      t.integer :round_id
      t.integer :home_team_id
      t.integer :away_team_id

      t.timestamps
    end
  end
end
