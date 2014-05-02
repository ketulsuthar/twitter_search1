class UserController < ApplicationController
  
	def index
		@users = User.all
	end

  def create
  	if !current_user.save
  		puts "some error"
 		end 		
  end

  def current_user
  	@user
  end

  def show
  	current_user = User.find id: params[:id]
  end

  def destroy
  	current_user.delete
  end

  def new
  	current_user = User.new params[:users]
  end

  def update
  	current_user.update params[:users]
  end

end
