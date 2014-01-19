class PollsController < ApplicationController

	before_filter :ensure_user, only: [:home]

	def index
		@polls = Poll.all
	end

	def new
		@user = current_user
		@poll = Poll.new
		@poll.admin_id = @user.id
	end

	def show
		@poll = Poll.find(params[:id])
		@games = current_user.polls.find(params[:id]).games
		@new_bet = Bet.new
	end

	def edit
		@user = current_user
		@poll = Poll.find(params[:id])
		if @poll.admin_id != @user.id
			flash[:error] = "The poll can only be edited by the administrator!"
			redirect_to root_path
		end
	end

	def create
		@poll = Poll.new(poll_attributes)

		if @poll.save
		  current_user.polls << @poll
			flash[:success] = "Polla creada."
			redirect_to @poll
		else
			flash[:error] = "Ha ocurrido un error!"
			render "new"
		end
	end

	def update
		@poll = Poll.find(params[:id])
		if @poll.name_changed?
			@name_change = true
		end
		if @poll.password_changed?
			@password_change = true
		end
		if @poll.update_attributes(params[:poll])
			flash[:success] = "Polla actualizada."
			redirect_to @poll
		else
			flash[:error] = "Ha ocurrido un error!"
			render "edit"
		end
	end

	def destroy
		@poll = Poll.find(params[:id])
		@poll.destroy
		flash[:success] = "Poll destruida"
		redirect_to main_path
	end

	def join
		@user = current_user
		if params[:poll_search].nil?
			@poll = nil
		else
			@poll =  Poll.find_by_name(params[:poll_search])
		end
		@password = params[:poll_pass]
		unless params[:poll_search].nil?
			if @poll.nil?
				flash[:error] = "La polla no ha sido encontrada."
				redirect_to :back
			else
				unless @password.nil?
					if @password === @poll.password and @poll.users.include?(@user) == false
						@user.polls << @poll
						flash[:success] = "Ya eres parte de la polla!"
						redirect_to root_path
					else
						flash[:error] = "El nombre y la clave de la polla no coinciden"
      			render "join"
					end
				end
			end
		end
	end

	def leave
    #something to be set up here...
	end

	def kick_out
  		@poll = Poll.find(params[:id])
  		@user = User.find(params[:user_id])
  		@poll.users.delete(@user)
			flash[:success] = @user.name + " ha sido sacado de la polla"
      render "ranking"
  end

  def ranking
		@poll = Poll.find(params[:id])
  end

  def members
		@poll = Poll.find(params[:id])
  end

private

  def poll_attributes
  	params[:poll].merge(admin_id: current_user.id)
  end

end
