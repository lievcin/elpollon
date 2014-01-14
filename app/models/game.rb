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
	
  after_save :assign_points

  protected
  	
   	def assign_points 	  
   	  self.bets.each do |bet|
 				p = points_per_game(self.home_score, self.away_score, bet.home_bet, bet.away_bet)
 				bet.total_points = p
 				bet.save
 	    end
    end

  	def points_per_game(home_score, away_score, home_bet, away_bet)
  		if home_score == home_bet && away_score == away_bet
  			return 3
  		else
  			if (home_score - away_score) - (home_bet - away_bet) == 0 
  				if home_score == away_score 
  					return 1
  				else
  					return 2
  				end
  			else
  				if ((home_score - away_score) <=> 0) == ((home_bet - away_bet) <=> 0) 
  					return 1
  				else
  					return 0
  				end
  			end
  		end
  	end
  		
end

