class UsersController < ApplicationController
  @@user = nil
	def index
		@@users = User.all
	end

  def create
    current_user = User.new params[:users]
  	if !current_user.save
  		puts "some error"
 		end 		
    redirect_to new_user_path 
  end

  def current_user
  	@@user
  end

  def show
  	current_user = User.all name: params[:id]
    @user = current_user
  end

  def destroy
  	current_user.delete
  end

  def new
  	current_user = User.new 
  end

  def update
  	current_user.update params[:users]
  end

  def create_twitter_user
    new_user = User.new name: params[:name], screen_name: params[:screen_name]#, email: params[:username]
    if !new_user.save
      puts "some error"
    end   
    @user = new_user  
    
    #redirect_to search_display_path
  end
end
