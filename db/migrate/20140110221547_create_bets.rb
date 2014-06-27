class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.integer :user_id
      t.integer :poll_id
      t.integer :game_id
      t.integer :home_bet
      t.integer :away_bet
      t.boolean :home_bet_pt
      t.boolean :away_bet_pt
      t.integer :total_points

      t.timestamps
    end
  end
end
