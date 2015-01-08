
class GroupMembershipsController < ApplicationController
  # GET /group_memberships
  # GET /group_memberships.json
  def index
    @group_memberships = GroupMembership.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @group_memberships }
    end
  end

  # GET /group_memberships/1
  # GET /group_memberships/1.json
  def show
    @group_membership = GroupMembership.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @group_membership }
    end
  end

  # GET /group_memberships/new
  # GET /group_memberships/new.json
  def new
    @group_membership = GroupMembership.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @group_membership }
    end
  end

  # GET /group_memberships/1/edit
  def edit
    @group_membership = GroupMembership.find(params[:id])
  end

  # POST /group_memberships
  # POST /group_memberships.json
  def create
    @group_membership = GroupMembership.new(params[:group_membership])
    @group_membership.user_id = current_user.id
    @group_membership.group_id = params[:group_id]

    respond_to do |format|
      if @group_membership.save
        format.html { redirect_to request.referer, notice: 'You was successfully joined the group.' }
        format.json { render json: request.referer, status: :created, location: @group_membership }
      else
        format.html { render action: "new" }
        format.json { render json: meetup_profile_path(@meetup_profile.id).errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /group_memberships/1
  # PUT /group_memberships/1.json
  def update
    @group_membership = GroupMembership.find(params[:id])

    respond_to do |format|
      if @group_membership.update_attributes(params[:group_membership])
        format.html { redirect_to @group_membership, notice: 'Group membership was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @group_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_memberships/1
  # DELETE /group_memberships/1.json
  def destroy
    @group_membership = GroupMembership.find(params[:id])
    @group_membership.destroy

    respond_to do |format|
      format.html { redirect_to request.referer }
      format.json { head :no_content }
    end
  end
end
