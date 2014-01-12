# -*- coding: utf-8 -*-
class BetsController < ApplicationController
  before_filter :ensure_user

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
		@cup = Bet.new(params[:bet])

		if @bet.save
			redirect_to :back
			flash[:success] = "Bet created."
		else
			flash[:error] = "Error!"
			redirect_to :back
		end
  end

  def update
		@bet = Bet.find(params[:id])

		if @bet.update_attributes(params[:bet])
			flash[:success] = "Updated."
			redirect_to :back
		else
			flash[:error] = "Error!"
			redirect_to :back
		end
  end

  def destroy
		Bet.find(params[:id]).destroy
		flash[:success] = "Bet destroyed."
		redirect_to :back
  end

end
