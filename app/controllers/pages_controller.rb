# -*- coding: utf-8 -*-
class PagesController < ApplicationController

  layout 'landing', :only => [:home]

	skip_filter :ensure_user, only: [:home]
	skip_filter :ensure_manager

	def home
		@games = Game.where("kickoff > ?", Time.now).order(:kickoff).limit(10)
	end

	def main
		@games = current_user.games# .uniq.limit(20)
		#@games = current_user.games.order(:kickoff).uniq
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
