class CupsController < ApplicationController

	before_filter :ensure_manager

	def index
		@cups = Cup.all
	end

	def new
		@cup = Cup.new
	end

	def edit
		@cup = Cup.find(params[:id])
	end

	def create
		@cup = Cup.new(params[:cup])

		if @cup.save
			flash[:success] = "Competencia creada"
			redirect_to cups_path
		else
			flash[:error] = "Ha ocurrido un error!"
			redirect_to :back
		end
	end

	def update
		@cup = Cup.find(params[:id])

		if @cup.update_attributes(params[:cup])
			flash[:success] = "Competencia actualizada"
			redirect_to cups_path
		else
			flash[:error] = "Ha ocurrido un error!"
			redirect_to :back
		end
	end

	def destroy
		Cup.find(params[:id]).destroy
		flash[:success] = "Competencia destruida"
		redirect_to :back
	end

	def choose_teams
		@cup = Cup.find(params[:id])
	end

private

	def ensure_manager
		redirect_to root_path unless current_user.is_management?
	end
end
