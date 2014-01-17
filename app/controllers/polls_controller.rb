class PollsController < ApplicationController
	def index
		@title = "List of polls"
		@polls = Poll.all
	end

	def new
		@title = "New poll"
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
		@title = "Poll edit"
		@user = current_user
		@poll = Poll.find(params[:id])
		if @poll.admin_id != @user.id
			flash[:error] = "The poll can only be edited by the administrator!"
			redirect_to root_path
		end
	end

	def invite
    #something to be set up here... 
	end 

	def create
		@poll = Poll.new(params[:poll])
		@user = current_user
		if @poll.save
		  @user.polls << @poll
			flash[:success] = "Poll created successfully"
			redirect_to @poll
		else
			flash[:error] = "Error!"
			redirect_to :back
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
			flash[:success] = "Poll updated."
			redirect_to @poll
		else
			flash[:error] = "Error!"
			redirect_to :back
		end
	end

	def destroy
		@poll = Poll.find(params[:id])
		@poll.destroy		
		flash[:success] = "Poll deleted"
		redirect_to root_path
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
				flash[:error] = "Poll not found."
				redirect_to :back
			else
				unless @password.nil?
					if @password === @poll.password and @poll.users.include?(@user) == false
						@user.polls << @poll
						flash[:success] = "Joined the poll!"
						#Post.create(	headline: "New member", 
						#				category: "com" + @poll.id.to_s,
						#				content: @user.name + " has joined! Welcome!")
						redirect_to root_path
					else
						flash[:error] = "Name and password don't match"
						redirect_to :back
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
			flash[:success] = @user.name + " has been kicked out of the poll!"
  		redirect_to @poll
  end
  
  def ranking
		@poll = Poll.find(params[:id])    
  end
  
  def members
		@poll = Poll.find(params[:id])    
  end
  
  
  
end
