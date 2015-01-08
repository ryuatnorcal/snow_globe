# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
	# The path used after sign up for inactive accounts. You need to overwrite
	# this method in your own RegistrationsController.
  prepend_before_filter :require_no_authentication, :only => [ :new, :create, :cancel ]
  prepend_before_filter :authenticate_scope!, :only => [:edit, :update, :destroy]

  # GET /resource/sign_up
  def new
    resource = build_resource({})
    respond_with resource
  end

  # POST /resource
  def create
    build_resource

    if resource.save
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_navigational_format?
        sign_in(resource_name, resource)
        respond_with resource, :location => after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
        expire_session_data_after_sign_in!
        respond_with resource, :location => after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  # GET /resource/edit
  def edit
    render :edit
  end

  # PUT /resource
  # We need to use a copy of the resource because we don't want to change
  # the current user in place.
  def update
    self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)

    if resource.update_with_password(resource_params)
      if is_navigational_format?
        if resource.respond_to?(:pending_reconfirmation?) && resource.pending_reconfirmation?
          flash_key = :update_needs_confirmation
        end
        set_flash_message :notice, flash_key || :updated
      end
      sign_in resource_name, resource, :bypass => true
      respond_with resource, :location => after_update_path_for(resource)
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  # [ FixMe ] DELETE /resource
  def destroy
    # Other user associated information destroy 
    # Profile, Friendship, Location, gallery,meetup_profile,meetup_rsvp 
    # need to be destroyed
    
    #@user = Profile.find(current_user.id)
    #Friendship.find(:all,:conditions=>[":user_id=? OR :friend_id=?",current_user.id,current_user.id]).each do |friends|
    #    @selection = Friendship.find(friends.id)
    #    @selection.destroy
    #end
    #Micropost.find(:all,:conditions=>[":user_id=?",current_user.id]).each do |microposts|
    #    @selection = Micropost.find(microposts.id)
    #   @selection.destroy
    #end
    #Comment.find(:all,:conditions=>[":user_id=?",current_user.id]).each do |comments|
    #    @selection = comment.find(comments.id)
    #    @selection.destroy
    #end
    #MeetupComment.find(:all,:conditions=>[":user_id=?",current_user.id]).each do |meetup_comments|
    #    @selection = MeetupComment.find(meetup_comments.id)
    #    @selection.destroy
    #end
    #MeetupRsvp.find(:all,:conditions=>[":user_id=?",current_user.id]).each do |meetup_rsvps|
    #    @selection = MeetupRsvp.find(meetup_rsvps.id)
    #    @selection.destroy
    #end
# test redirect     
    #respond_to do |format|
    #  format.html { redirect_to edit_user_registration_path }
    #  format.html { redirect_to dashboard_path }
    #  format.json { head :no_content }
    #end    
       

        # Devise user information destroy 
        resource.destroy
        Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
        set_flash_message :notice, :destroyed if is_navigational_format?
        respond_with_navigational(resource){ redirect_to after_sign_out_path_for(resource_name) }
    #end
  end

  
  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    expire_session_data_after_sign_in!
    redirect_to new_registration_path(resource_name)
  end

  protected

  # Build a devise resource passing in the session. Useful to move
  # temporary session data to the newly created user.
  #def build_resource(hash=nil)
  #  hash ||= resource_params || {}
  #  self.resource = resource_class.new_with_session(hash, session)
  #end
  
  # This line was added because it didn't work when you update the user profile. 
  # The same function is supposed to in  File 'app/controllers/devise_controller.rb', line 31
  # Solution resorces : http://rubydoc.info/github/plataformatec/devise/master/DeviseController#resource_params-instance_method
  def resource_params
    params[resource_name]
  end

  # The path used after sign up. You need to overwrite this method
  # in your own RegistrationsController.
  def after_sign_up_path_for(resource)
    after_sign_in_path_for(resource) || welcome_path
  end

  # The path used after sign up for inactive accounts. You need to overwrite
  # this method in your own RegistrationsController.
  def after_inactive_sign_up_path_for(resource)
    respond_to?(:root_path) ? root_path : "/"
  end

  # The default url to be used after updating a resource. You need to overwrite
  # this method in your own RegistrationsController.
  def after_update_path_for(resource)
    signed_in_root_path(resource)
  end

  # Authenticates the current scope and gets the current resource from the session.
  def authenticate_scope!
    send(:"authenticate_#{resource_name}!", :force => true)
    self.resource = send(:"current_#{resource_name}")
  end
   def after_sign_in_path_for(resource)
  	stored_location_for(resource)
	end
end
