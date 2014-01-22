class Bet < ActiveRecord::Base

  attr_accessible :user_id, :poll_id, :game_id, :home_bet, :away_bet, :home_bet_pt, :away_bet_pt, :total_points
  
	belongs_to :user
	belongs_to :poll
  belongs_to :game

  validates :user_id,			:presence => true
  validates :game_id,			:presence => true
  validates :poll_id,			:presence => true
  validates :home_bet,		:presence => true
  validates_numericality_of 	:home_bet, :only_integer => true
  validates :away_bet,		:presence => true
  validates_numericality_of 	:away_bet, :only_integer => true
  validates_uniqueness_of		:game_id, :scope => :user_id
  	
end
