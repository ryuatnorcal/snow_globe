# this file is ignored 
class Admin::UsersController < Devise::ApplicationController
# this for the something about 
	def create
		@admin = Admin.new(params[:admin])
		if @admin.save
			redirect_to new_profile_path, :notice => 'New Administrator has been added \n Now Create your profile '
		else
			render :action => "new"
		end
	end  
end
