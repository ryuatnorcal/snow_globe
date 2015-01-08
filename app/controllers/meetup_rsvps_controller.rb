
class MeetupRsvpsController < ApplicationController
  # GET /meetup_rsvps
  # GET /meetup_rsvps.json
  def index
    @meetup_rsvps = MeetupRsvp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meetup_rsvps }
    end
  end

  # GET /meetup_rsvps/1
  # GET /meetup_rsvps/1.json
  def show
    @meetup_rsvp = MeetupRsvp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meetup_rsvp }
    end
  end

  # GET /meetup_rsvps/new
  # GET /meetup_rsvps/new.json
  def new
    @meetup_rsvp = MeetupRsvp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meetup_rsvp }
    end
  end

  # GET /meetup_rsvps/1/edit
  def edit
    @meetup_rsvp = MeetupRsvp.find(params[:id])
  end

  # POST /meetup_rsvps
  # POST /meetup_rsvps.json
  def create
    @meetup_rsvp = MeetupRsvp.new(params[:meetup_rsvp])
		@meetup_rsvp.event_id = params[:event_id]
		@meetup_rsvp.rsvp = params[:rsvp]
		@meetup_rsvp.user_id = current_user.id
		@meetup_rsvp.username = current_user.username
    respond_to do |format|
      if @meetup_rsvp.save
        format.html { redirect_to meetup_path(@meetup_rsvp.event_id), notice: 'Meetup rsvp was successfully created.' }
        format.json { render json: meetup_path(@meetup_rsvp.event_id), status: :created, location: @meetup_rsvp }
      else
        format.html { render action: "new" }
        format.json { render json: @meetup_rsvp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meetup_rsvps/1
  # PUT /meetup_rsvps/1.json
  def update
   # if params[:attend].present?
   #     @meetup_rsvp = MeetupRsvp.find(params[:id])
   #     @meetup_rsvp.attend = params[:attend]
   # else
        @meetup_rsvp = MeetupRsvp.find(params[:id])
	    @meetup_rsvp.rsvp = params[:rsvp]
	#end
    respond_to do |format|
      if @meetup_rsvp.update_attributes(params[:meetup_rsvp])
        format.html { redirect_to meetup_path(@meetup_rsvp.event_id), notice: 'Meetup rsvp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meetup_rsvp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetup_rsvps/1
  # DELETE /meetup_rsvps/1.json
  def destroy
    @meetup_rsvp = MeetupRsvp.find(params[:id])
    @meetup_rsvp.destroy

    respond_to do |format|
      format.html { redirect_to request.referer}
      format.json { head :no_content }
    end
  end
end
