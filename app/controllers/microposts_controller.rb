    
class MicropostsController < ApplicationController


  # GET /microposts
  # GET /microposts.json
  #prepend_before_filter :authenticate_scope!, :only => [:destroy]
      
  def index
    
    @microposts = Micropost.paginate(:page => params[:page], :per_page => 50,:order => 'created_at DESC')
    @micropost = Micropost.new
    @comment = Comment.new 	 
    
    @Followings = Array.new
    @Followers = Array.new
    
     if user_signed_in? #added 
          @user = Profile.find_by_id(current_user.id)
          Friendship.find(:all,:conditions => ["user_id = ?", current_user.id]).each do |following_id|
            Profile.find_by_id(following_id.friend_id) do |following|
                @Followings << following
            end
          end 
          Friendship.find(:all,:conditions => ["friend_id=?", current_user.id]).each do |follower_id|
            Profile.find_by_id(follower_id.user_id) do |follower|
                @Followers << follower
            end
          end
		  respond_to do |format|
		    format.html # index.html.erb
		    format.json { render json: @microposts }
		  end
	  else #added redirect_to + path name and go to other path!! 
	  		redirect_to new_user_session_path
	  end    
    if current_user
		  Friendship.find(:all,:conditions => ["friend_id=?", current_user.id]).each do |friend|
		  	@friend_posts = Micropost.find(:user_id => friend.id)
		  end
		end
    
	
	end
  def _posts
    @microposts = Micropost.paginate(:page => params[:page], :per_page => 3).order('DSEC')

  end
  # GET /microposts/1
  # GET /microposts/1.json
  def show
    @micropost = Micropost.find(params[:id])
		  respond_to do |format|
		    format.html # show.html.erb
		    format.json { render json: @micropost }
		  end

  end

  # GET /microposts/new
  # GET /microposts/new.json
  def new
  	@micropost = Micropost.new 
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micropost }
    end
  end
  
 # added for form with JQuery
 def _form
    @comment = Comment.new
 end

  # GET /microposts/1/edit
  def edit
    @micropost = Micropost.find(params[:id])
  end

  # POST /microposts
  # POST /microposts.json
  def create
    @micropost = Micropost.new(params[:micropost])
		@micropost.user_id = current_user.id
		@micropost.username = current_user.username
		@micropost.post_time = Time.now
    respond_to do |format|
      if @micropost.save
        format.html { redirect_to dashboard_path, notice: 'Successfully posted !' }
        format.json { render json: @micropost, status: :created, location: @micropost }
      else
        format.html { render action: "new" }
        format.json { render json: @micropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /microposts/1
  # PUT /microposts/1.json
  def update
    @micropost = Micropost.find(params[:id])

    respond_to do |format|
      if @micropost.update_attributes(params[:micropost])
        format.html { redirect_to dashboard_path, notice: 'The post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microposts/1
  # DELETE /microposts/1.json
  def destroy
    #if params.has_key?(:class)
    #    @user = User.find(params[:id])
    #    @user.destroy
    #    respond_to do |format|
    #      format.html { redirect_to admin_path }
    #      format.json { head :no_content }
    #    end
    #else
        @micropost = Micropost.find(params[:id])
        @micropost.destroy

        respond_to do |format|
          format.html { redirect_to request.referer }
          format.json { head :no_content }
        end
    #end
  end
end
