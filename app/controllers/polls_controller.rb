class PollsController < ApplicationController
	def index
		@title = "List of polls"
		@polls = Poll.all
	end

	def new
		@title = "New poll"
		@user = User.find_by_name("Liev") #This needs to be changed to current_user once developed
		@poll = Poll.new
		@poll.admin_id = @user.id
	end

	def show
		@title = "Poll view"
		@poll = Poll.find(params[:id])
		@admin = User.find(@poll.admin_id)
		@user = User.find_by_name("Liev") #This needs to be changed to current_user once developed		
		@members = @poll.users
	end

	def edit
		@title = "Poll edit"
		@user = User.find_by_name("Liev") #This needs to be changed to current_user once developed
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
		@user = User.find_by_name("Liev") #This needs to be changed to current_user once developed
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
		flash[:success] = "Poll deleted"
		redirect_to root_path
	end

	def join
		@user = User.find_by_name("Daniel") #This needs to be changed to current_user once developed
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
					if @password === @poll.password
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
    #something to be set up here... 
end
