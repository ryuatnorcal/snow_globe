
class MeetupsController < ApplicationController
  # GET /meetups
  # GET /meetups.json
  def index
	if params[:search].present?
		@meetups = Meetup.near(params[:search], 50, :order => :distance)
	else
	    @meetups = Meetup.all
	    @meetup_profile = MeetupProfile.all
	end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meetups }
    end
  end

  # GET /meetups/1
  # GET /meetups/1.json
  def show
    @meetup = Meetup.find(params[:id])
    @meetup_comment = MeetupComment.new
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meetup }
    end
  end

  # GET /meetups/new
  # GET /meetups/new.json
  def new
    @meetup = Meetup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meetup }
    end
  end

  # GET /meetups/1/edit
  def edit
    @meetup = Meetup.find(params[:id])
  end

  # POST /meetups
  # POST /meetups.json
  def create
	  @meetup = Meetup.new(params[:meetup])
		@meetup.organaizer_id = current_user.id
		@meetup.organaizer_name = current_user.username
        
	  respond_to do |format|
	    if @meetup.save
	      format.html { redirect_to meetup_path(@meetup.id), notice: 'Meetup was successfully created.' }
	      format.json { render json: meetup_path(@meetup.id), status: :created, location: @meetup }
	    else
	      format.html { render action: "new" }
	      format.json { render json: @meetup.errors, status: :unprocessable_entity }
	    end
	  end
  end

  # PUT /meetups/1
  # PUT /meetups/1.json
  def update

    if params[:attend].present?
        @meetup_rsvp = MeetupRsvp.find(params[:id])
        @meetup_rsvp.attend = params[:attend]
        respond_to do |format|
          if @meetup_rsvp.update_attributes(params[:meetup_rsvp])
            format.html { redirect_to @meetup_rsvp, notice: 'Meetup rsvp was successfully updated.' }
            format.json { head :no_content }
          else
            format.html { render action: "edit" }
            format.json { render json: @meetup_rsvp.errors, status: :unprocessable_entity }
          end
        end
    else
        @meetup = Meetup.find(params[:id])
        respond_to do |format|
          if @meetup.update_attributes(params[:meetup])
            format.html { redirect_to @meetup, notice: 'Meetup was successfully updated.' }
            format.json { head :no_content }
          else
            format.html { render action: "edit" }
            format.json { render json: @meetup.errors, status: :unprocessable_entity }
          end
        end
    end
  end

  # DELETE /meetups/1
  # DELETE /meetups/1.json
  def destroy
    @meetup = Meetup.find(params[:id])
    @meetup.destroy

    respond_to do |format|
      format.html { redirect_to request.referer }
      format.json { head :no_content }
    end
  end
end
