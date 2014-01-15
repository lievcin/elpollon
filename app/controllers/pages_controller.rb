# -*- coding: utf-8 -*-
class PagesController < ApplicationController

  layout 'main', :only => [:main]

	skip_filter :ensure_user, only: [:home]

	def home
		@title = "Homepage"
		@games = Game.where("kickoff > ?", Time.now).order(:kickoff).limit(9)

    @user = current_user
		#if user_signed_in?
		#	@user = current_user
		#	if @user.polls.nil?
		#		@posts = Post.where(:category => "News").paginate(:page => params[:page])
		#	else
		#		@poll = Poll.find(@user.polls)
		#		selected_posts = Post.where(:category => ["News", "com" + @poll.id.to_s])
		#		@posts = selected_posts.paginate(:page => params[:page])
		#	end
		#	@bets = @user.bets
		#end
	end

	def main
		@polls = current_user.polls
		@games = current_user.games.where("kickoff > ?", Time.now).order(:kickoff).limit(9)
		@new_bet = Bet.new		
		#@exist_bet = Bet.find(params[:id])    		
	end
	
	def admin
		@title = "Admin Overview"
	end

	def about
		@title = "About this project"
		@games = Game.where("kickoff > ?", Time.now).order(:kickoff).limit(9)
	end

	def rules
		@title = "Rules"
		@games = Game.where("kickoff > ?", Time.now).order(:kickoff).limit(9)	
	end
end
