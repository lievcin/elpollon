class Game < ActiveRecord::Base
  attr_accessible :kickoff, :home_score, :away_score, :home_score_et, :away_score_et, :home_score_pt, :away_score_pt, 
    :home_win, :away_win, :round_id, :home_team_id, :away_team_id

  
	has_many :bets
	has_many :users, :through => :bets
	has_many :polls, :through => :cup	
	belongs_to :round
	has_one :cup, :through => :round	
	has_many :teams

	validates :round_id,	:presence => true
	validates :kickoff, 	:presence => true
	validates :home_team_id,	:presence => true
	validates :away_team_id,	:presence => true
	validates_numericality_of :home_score, :only_integer => true, :allow_nil => true
	validates_numericality_of :away_score, :only_integer => true, :allow_nil => true
	validates_numericality_of :home_score_et, :only_integer => true, :allow_nil => true
	validates_numericality_of :away_score_et, :only_integer => true, :allow_nil => true
	validates_numericality_of :home_score_pt, :only_integer => true, :allow_nil => true
	validates_numericality_of :away_score_pt, :only_integer => true, :allow_nil => true
	validates_numericality_of :home_win, :only_integer => true, :allow_nil => true
	validates_numericality_of :away_win, :only_integer => true, :allow_nil => true
	
end

