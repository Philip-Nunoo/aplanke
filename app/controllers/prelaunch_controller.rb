class PrelaunchController < ApplicationController
  def index
  	@prelaunch = PrelaunchUser.new
  end


  def create
  	@prelaunch = PrelaunchUser.new(params[:prelaunch_user])
  	if PrelaunchUser.exists? :email=>@prelaunch.email
  		flash[:alert] = "Entry already made, phone number would be updated."
  		render 'index'
  	else  		
  		if @prelaunch.save
  			flash[:notice] = "Notification would be sent on day of opening. Thank you."
  			render 'index'
  		else
  			render 'index'
  		end
  	end
  end
end
