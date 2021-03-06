
class FriendshipController < ApplicationController
	def index
		@friendships = Friendship.all
	end
	
	def new
    @friendship = Friendship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profile }
    end
  end
  
	def create
		@friendship = Friendship.new(params[:friend_id])
		@friendship.friend_id = params[:friend_id]
		@friendship.user_id = current_user.id
    respond_to do |format|
      if @friendship.save
        format.html { redirect_to profile_path(:friend_id), notice: 'Friend was successfully created.' }
        format.json { render json: @profile, status: :created, location: @profile }
      else
      	put "had error "
      end
    end
  end
  def unfriend
  @id = params[:id]
	 @friendship = Friendship.find(@id)
	 @friendship.destroy
	 respond_to do |format|
     format.html { redirect_to request.referer, notice: 'Profile was successfully updated.' }
     format.json { head :no_content }
   end
 end
end
