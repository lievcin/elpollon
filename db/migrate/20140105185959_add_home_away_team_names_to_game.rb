class AddHomeAwayTeamNamesToGame < ActiveRecord::Migration
  def change
    add_column :games, :home_team, :string
    add_column :games, :away_team, :string
  end
end
