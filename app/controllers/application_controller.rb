class ApplicationController < ActionController::Base
  protect_from_forgery

  # HERE IS DEFENITION OF INDEX PAGE 
  # IF SIGN IN SHOW 'layouts/application.html.haml'
  # OTHER WISE 'layouts/external.html.haml'
  def index
		if signed_in? 
		  render :layout => 'application'
		else
			#@user = current_user
		  #render 'devise/registrations#new', :layout => 'sign_up' and return
	  end
	end

end

