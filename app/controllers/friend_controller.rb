
class FriendController < ApplicationController
	def index
		@friends = Friendship.all
	end
	def new
    @friend = Friendship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profile }
    end
  end
	def self.create
		@friend = Friendship.new(params[:friend])
		@friend.friend_id = params[:friend_id]
		@friend.user_id = current_user.id
    respond_to do |format|
      if @friend.save
        format.html { redirect_to profile_path(:friend_id), notice: 'Friend was successfully created.' }
        format.json { render json: @profile, status: :created, location: @profile }
      else
      	put "had error "
      end
   end
end
