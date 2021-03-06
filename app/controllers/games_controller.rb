 # -*- coding: utf-8 -*-
class GamesController < ApplicationController

	
	def index
		@title = "Overview of games"

		if params[:round_id].nil?
			next_game = Game.where("kickoff >= ?", Time.now).first
			@round = Round.find(next_game.round_id)
			@cup = Cup.find(@round.cup_id)
			@games = Game.where(:round_id => next_game.round_id).order('kickoff ASC')
		else
			@round = Round.find(params[:round_id])
			@cup = Cup.find(@round.cup_id)
			@games = Game.where(:round_id => params[:round_id]).order('kickoff ASC')
		end
	end

	def show
		@title = "Show Games"
		@game = Game.find(params[:id])
		@round = Round.find(@game.round_id)
		@cup = Cup.find(@round.cup_id)
	end

	def new
		@title = "Create Game"
		@cup = Cup.find(params[:cup_id])
		@round = Round.find(params[:round_id])
		@game = Game.new
		@teams = Team.all
	end

	def edit
		@title = "Edit Game"
		@game = Game.find(params[:id])
		@round = Round.find(@game.round_id)
		@cup = Cup.find(@round.cup_id)
		@teams = Team.all
	end

	def create
		@game = Game.new(params[:game])

		if @game.save
			flash[:success] = "Game Successfully created"
			redirect_to @game
		else
			flash[:error] = "Ha ocurrido un error!"
			redirect_to :back
		end
	end

	def update
		@game = Game.find(params[:id])

		if @game.update_attributes(params[:game])
			flash[:success] = "Game updated"
			redirect_to @game
		else
			flash[:error] = "Ha ocurrido un error!"
			redirect_to :back
		end
	end

	def destroy
		Game.find(params[:id]).destroy
		flash[:success] = "Game destroyed"
		redirect_to :back
	end

	def result_index
		@title = "Results"
		#@games = Game.where("kickoff < ?", Time.now).where(home_score: nil).order(:kickoff).limit(36)
		@games = Game.where("kickoff < ?", Time.now).order(:kickoff).reverse
	end

	def mass_game_edit
		@title = "Results"
		@games = Game.where("kickoff > ?", Time.now).order(:kickoff)
	end

	
end
