json.array!(@bets) do |bet|
  json.extract! bet, :id, :user_id, :poll_id, :game_id, :home_bet, :away_bet, :home_bet_pt, :away_bet_pt, :total_points
  json.url bet_url(bet, format: :json)
end
