
class MeetupProfilesController < ApplicationController
  # GET /meetup_profiles
  # GET /meetup_profiles.json
  def index
	if params[:search].present?
		@meetup_profiles = MeetupProfile.near(params[:search], 50, :order => :distance)
	else
    	@meetup_profiles = MeetupProfile.all
	end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meetup_profiles }
    end
  end

  # GET /meetup_profiles/1
  # GET /meetup_profiles/1.json
  def show
    @meetup_profile = MeetupProfile.find(params[:id])
    @meetup=Meetup.new
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meetup_profile }
    end
  end

  # GET /meetup_profiles/new
  # GET /meetup_profiles/new.json
  def new
    @meetup_profile = MeetupProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meetup_profile }
    end
  end
  
  def _form
    @meetup = Meetup.new
  end
  # GET /meetup_profiles/1/edit
  def edit
    @meetup_profile = MeetupProfile.find(params[:id])
  end

  # POST /meetup_profiles
  # POST /meetup_profiles.json
  def create
    @meetup_profile = MeetupProfile.new(params[:meetup_profile])
		@meetup_profile.organaizer_username = current_user.username
		@meetup_profile.organaizer_id = current_user.id
		
    respond_to do |format|
      if @meetup_profile.save
            @group_membership = GroupMembership.new
		    @group_membership.user_id = current_user.id
		    @group_membership.group_id = @meetup_profile.id
		 @group_membership.save
        format.html { redirect_to meetup_profile_path(@meetup_profile.id), notice: 'Meetup profile was successfully created.' }
        format.json { render json: meetup_profile_path(@meetup_profile.id), status: :created, location: @meetup_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @meetup_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meetup_profiles/1
  # PUT /meetup_profiles/1.json
  def update
    @meetup_profile = MeetupProfile.find(params[:id])

    respond_to do |format|
      if @meetup_profile.update_attributes(params[:meetup_profile])
        format.html { redirect_to meetup_profile_path(@meetup_profile.id), notice: 'Meetup profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meetup_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetup_profiles/1
  # DELETE /meetup_profiles/1.json
  def destroy
    @meetup_profile = MeetupProfile.find(params[:id])
    @meetup_profile.destroy

    respond_to do |format|
      format.html { redirect_to request.referer }
      format.json { head :no_content }
    end
  end
end
