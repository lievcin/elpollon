class Game < ActiveRecord::Base
	has_many :bets
	has_many :users, :through => :bets
	belongs_to :round
	belongs_to :cup
	has_many :teams

	validates :round_id,	:presence => true
	validates :kickoff, 	:presence => true
	validates :home_team,	:presence => true
	validates :away_team,	:presence => true
	validates_numericality_of :home_score, :only_integer => true, :allow_nil => true
	validates_numericality_of :away_score, :only_integer => true, :allow_nil => true
	validates_numericality_of :home_score_et, :only_integer => true, :allow_nil => true
	validates_numericality_of :home_score_et, :only_integer => true, :allow_nil => true
	validates_numericality_of :home_score_pt, :only_integer => true, :allow_nil => true
	validates_numericality_of :away_score_pt, :only_integer => true, :allow_nil => true
	validates_numericality_of :home_win, :only_integer => true, :allow_nil => true
	validates_numericality_of :away_win, :only_integer => true, :allow_nil => true
	
end
