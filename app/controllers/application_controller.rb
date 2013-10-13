class ApplicationController < ActionController::
	protect_from_forgery
	before_filter :strip_www

	def strip_www
	  if request.env["HTTP_HOST"] == "www.aplanke.herokuapp.com"
	    redirect_to "http://www.aplanke.phnunoo.com/"
	  end
	end
end
