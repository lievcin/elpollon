# -*- coding: utf-8 -*-
class PagesController < ApplicationController

  layout 'landing', :only => [:home]

	skip_filter :ensure_user, only: [:home]

	def home
		@games = Game.where("kickoff > ?", Time.now).order(:kickoff).limit(10)
    @user = current_user
	end

	def main
		#@games = current_user.games.where("kickoff > ?", Time.now).order(:kickoff).limit(50)
		@games = current_user.games.order(:kickoff).limit(50).uniq
	end
	
	def poll_view
	  @poll  = Poll.find(params[:poll_id])
		@games = current_user.polls.find(params[:poll_id]).games
		@new_bet = Bet.new
	end	
	
	def admin
		@title = "Admin Overview"
	end

	def about
		@games = Game.where("kickoff > ?", Time.now).order(:kickoff).limit(9)
	end

	def rules
		@games = Game.where("kickoff > ?", Time.now).order(:kickoff).limit(9)	
	end
end
