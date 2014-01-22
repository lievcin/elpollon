# -*- coding: utf-8 -*-
class BetsController < ApplicationController
  before_filter :ensure_user
  skip_filter :ensure_manager, except: [:destroy]

  def index
    @bets = Bet.all
  end

  def show
		@bet = Bet.find(params[:id])
  end

  def new
    @bet = Bet.new
  end

  def edit
		@bet = Bet.find(params[:id])
  end

  def create
		@bet = Bet.new(params[:bet])
		if @bet.save
			redirect_to :back
			flash[:success] = "Apuesta creada."
		else
			flash[:error] = "Ha ocurrido un error!"
			redirect_to :back
		end
  end

  def update
		@bet = Bet.find(params[:id])

		if @bet.update_attributes(params[:bet])
			flash[:success] = "Apuesta actualizada."
			redirect_to :back
		else
			flash[:error] = "Ha ocurrido un error!"
			redirect_to :back
		end
  end

  def destroy
		Bet.find(params[:id]).destroy
		flash[:success] = "Apuesta destruida."
		redirect_to :back
  end

end
