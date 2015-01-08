
class ProfilesController < ApplicationController
  # GET /profiles
  # GET /profiles.json

  def index
    @profiles = Profile.all
    @friendships = Friendship.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profiles }
    end
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @profile = Profile.find(params[:id])
    @bland = Array.new
    @style = Array.new
    if @profile.Snowboarder?
        @style << "Snowboarder "
    end
    if @profile.Skier?
        @style << "Skier "
    end
    if @profile.Snowskater?
        @style << "Snowskater "
    end
    if @profile.Other_style?
        @style << @profile.Other_style_detail
    end
    
    if @profile.GNU?
        @bland << "GNU"
    end
    if @profile.libtech?
        @bland << "lib Tech"
    end
    if @profile.Omatic?
        @bland << "Omatic"
    end
    if @profile.Stepchild?
        @bland << "Stepchild"
    end
    if @profile.Capita?
        @bland << "Capita"
    end
    if @profile.Neversummer?
        @bland << "Neversummer"
    end
    if @profile.K2
        @bland << "K2"
    end
    if @profile.Forum?
        @bland << "Forum"
    end
    if @profile.Rome?
        @bland << "Rome"
    end
    if @profile.Lamar?
        @bland << "Lamar"
    end
    if @profile.Morrow?
        @bland << "Morrow"
    end
    if @profile.LTD?
        @bland << "LTD"
    end
    if @profile.Dragon?
        @bland << "Dragon"
    end
    if @profile.Anon?
        @bland << "Anon"
    end
    if @profile.Flow?
        @bland << "Flow"
    end
    if @profile.Four_square?
        @bland << "Four Square"
    end
    if @profile.DC?
        @bland << "DC"
    end
    if @profile.Dakine?
        @bland << "Dakine"
    end
    if @profile.Grenade?
        @bland << "Grenade"
    end
    if @profile.Celtek?
        @bland << "Celtek"
    end
    if @profile.six_eight_six?
        @bland << "686"
    end
    if @profile.Airblaster?
        @bland << "Airblaster"
    end
    if @profile.Bonfire?
        @bland << "Bonfire"
    end
    if @profile.Electric?
        @bland << "Electric"
    end
    if @profile.Nike_Snowboarding?
        @bland << "Nike Snowboarding"
    end
    if @profile.RED?
        @bland << "RED"
    end
    if @profile.Roxy?
        @bland << "Roxy"
    end
    if @profile.Skullcandy?
        @bland << "Skullcandy"
    end
    if @profile.Sessions?
        @bland << "Sessions"
    end
    if @profile.Smith?
        @bland << "Smith"
    end
    if @profile.Special_Blend?
        @bland << "Special Blend"
    end
    if @profile.Thirty_two?
        @bland << "Thirty Two"
    end
    if @profile.Union?
        @bland << "Union"
    end
    if @profile.bentmetal?
        @bland << "Bentmetal"
    end
    if @profile.Volcom?
        @bland << "Volcom"
    end
    if @profile.Vans?
        @bland << "Vans"
    end
    if @profile.Salomon?
        @bland << "Salomon"
    end
    if @profile.One_Ball_Jay?
        @bland << "One Ball Jay"
    end
    if @profile.Nomis?
        @bland << "Nomis"
    end
    if @profile.Billa_Bong?
        @bland << "Billa Bong"
    end
    if @profile.five_one_five_zero?
        @bland << "5150"
    end
    if @profile.Analog?
        @bland << "Analog"
    end
    if @profile.Avalanche?
        @bland << "Avalanche"
    end
    if @profile.Drake?
        @bland << "Drake"
    end
    if @profile.Element?
        @bland << "Element"
    end
    if @profile.Limited?
        @bland << "Limited"
    end
    if @profile.Palmer_Snowboards?
        @bland << "Palmer Snowboards"
    end
    if @profile.Quiksilver?
        @bland << "Quiksilver"
    end
    if @profile.Rossignol?
        @bland << "Rossignol"
    end
    if @profile.Spyder?
        @bland << "Spyder"
    end
    if @profile.Technine?
        @bland << "Technine"
    end
    if @profile.Swix?
        @bland << "Swix"
    end
    if @profile.The_North_Face?
        @bland << "The North Face"
    end
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile }
    end
  end

  # GET /profiles/new
  # GET /profiles/new.json
  def new
    @profile = Profile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profile }
    end
  end

  # GET /profiles/1/edit
  def edit
	    @profile = Profile.find(params[:id])  
	    @user = User.find(params[:id])
  end

	def find
		@profiles= Profile.find(:all)
	end
  # POST /profiles
  # POST /profiles.json
  def create
  	
  	if params.has_key?(:profile)
		  @profile = Profile.new(params[:profile])
			@profile.user_id = current_user.id
			@profile.userName = current_user.username
			@profile.id = current_user.id
			if @profile.email != current_user.email
			    @user = User.new(params[:profile])
			    @user.email = @profile.email
			    @user.save
			end
		  respond_to do |format|
		    if @profile.save 
		      format.html { redirect_to dashboard_path, notice: 'Profile was successfully created.' }
		      format.json { render json: dashboard_path, status: :created, location: @profile }
		    else
		      format.html { render action: "new" }
		      format.json { render json: @profile.errors, status: :unprocessable_entity }
		    end
		  end
	  end
	  if params.has_key?(:friend_id)

	  	@friendship = Friendship.new(params[:friendships])
	  	@friendship.user_id = current_user.id
	  	@friendship.friend_id = params[:friend_id]
	  	
	  	respond_to do |format|
	  		if@friendship.save 
	  		## here will be reverse condition 
	  		#	@friendship = Friendship.new(params[:friendships])
	  		#	@friendship.user_id = params[:friend_id]
	  		#	@friendship.friend_id = current_user.id
				#	if @friendship.save 
	  			format.html { redirect_to dashboard_path, notice: ' was successfully created.' }
		      format.json { render json: @profile, status: :created, location: @profile }
		    #  end
	      else
		      format.html { render action: "new" }
		      format.json { render json: @profile.errors, status: :unprocessable_entity }
	      end
      end
	  end
  end

  # PUT /profiles/1
  # PUT /profiles/1.json
  def update
    @profile = Profile.find(params[:id])

    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy

		  @profile = Profile.find(params[:id])
		  @profile.destroy

    respond_to do |format|
      format.html { redirect_to admin_path }
      format.json { head :no_content }
    end
  end	
  
  def unfriend
  	@friendship = Friendship.find(params[:id])
  	@friendship.destroy
  	respond_to do |format|
      format.html { redirect_to dashboard_path, notice: 'Profile was successfully updated.' }
      format.json { head :no_content }
    end
  end
  
end
