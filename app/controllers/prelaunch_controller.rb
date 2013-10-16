class PrelaunchController < ApplicationController
  def index
  	@prelaunch = PrelaunchUser.new
  end


  def create
  	@prelaunch = PrelaunchUser.new(params[:prelaunch_user])
  	if PrelaunchUser.exists? :email=>@prelaunch.email
  		flash[:alert] = "Entry already made, phone number would be updated."
  		redirect_to root_url
  	else  		
  		if @prelaunch.save
  			flash[:notice] = "Notification would be sent on day of opening. Thank you."
  			redirect_to root_url
  		else
  			redirect_to root_url
  		end
  	end
    redirect_to root_url
  end

  def faq
    @faq = Faq.all
  end
end
