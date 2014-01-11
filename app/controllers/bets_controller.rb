# -*- coding: utf-8 -*-
class BetsController < ApplicationController
  before_filter :ensure_user

  def place_bet
		@title = "Bet"
		@user = current_user
		@bets = @user.bets

		if params[:cup_id].nil?
			if params[:round_id].nil?
				@round = get_current_round
			else
				@round = Round.find(params[:round_id])
			end
			@cup = Cup.find(@round.cup_id)
		else
			@cup = Cup.find(params[:cup_id])
			if params[:round_id].nil?
				@round = get_current_cup_round
			else
				if Round.find(params[:round_id]).cup_id != @cup.id
					@round = get_current_cup_round
				else
					@round = @round = Round.find(params[:round_id])
				end
			end
		end

		@cup_options = Cup.all
		@round_options = @cup.rounds
		@games = @round.games.order('kickoff ASC')
		@bet = Bet.new

		if Round.where(:leg => @round.leg+1).nil?
			@nextround = nil
		else
			@cuprounds = @cup.rounds
			nextleg = @round.leg+1
			@nextround = @cuprounds.where(:leg => nextleg).first
		end

		if Round.where(:leg => @round.leg-1).nil?
			@previousround = nil
		else
			@cuprounds = @cup.rounds
			previousleg = @round.leg-1
			@previousround = @cuprounds.where(:leg => previousleg).first
		end    
  end



  # GET /bets
  # GET /bets.json
  def index
    @bets = Bet.all
  end

  # GET /bets/1
  # GET /bets/1.json
  def show
  end

  # GET /bets/new
  def new
    @bet = Bet.new
  end

  # GET /bets/1/edit
  def edit
  end

  # POST /bets
  # POST /bets.json
  def create
    @bet = Bet.new(bet_params)

    respond_to do |format|
      if @bet.save
        format.html { redirect_to @bet, notice: 'Bet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bet }
      else
        format.html { render action: 'new' }
        format.json { render json: @bet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bets/1
  # PATCH/PUT /bets/1.json
  def update
    respond_to do |format|
      if @bet.update(bet_params)
        format.html { redirect_to @bet, notice: 'Bet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bets/1
  # DELETE /bets/1.json
  def destroy
    @bet.destroy
    respond_to do |format|
      format.html { redirect_to bets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bet
      @bet = Bet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bet_params
      params.require(:bet).permit(:user_id, :poll_id, :game_id, :home_bet, :away_bet, :home_bet_pt, :away_bet_pt, :total_points)
    end
end
