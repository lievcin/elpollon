# -*- coding: utf-8 -*-
class PagesController < ApplicationController
	skip_filter :ensure_user, only: [:home]

	def home
		@title = "Homepage"
		@games = Game.find(:all, :conditions => ["kickoff > ?", Time.now],
	 							:order => 'kickoff ASC', :limit => 9)

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

	def admin
		@title = "Admin Overview"
	end

	def about
		@title = "About this project"
		@games = Game.find(:all, :conditions => ["kickoff > ?", Time.now],
	 							:order => 'kickoff ASC', :limit => 9)
	end

	def rules
		@title = "Rules"
		@games = Game.find(:all, :conditions => ["kickoff > ?", Time.now],
	 							:order => 'kickoff ASC', :limit => 9)
	end
end
