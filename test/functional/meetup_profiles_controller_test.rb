require 'test_helper'

class MeetupProfilesControllerTest < ActionController::TestCase
  setup do
    @meetup_profile = meetup_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meetup_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meetup_profile" do
    assert_difference('MeetupProfile.count') do
      post :create, meetup_profile: { group_id: @meetup_profile.group_id, groupname: @meetup_profile.groupname, image: @meetup_profile.image, member_names: @meetup_profile.member_names, members: @meetup_profile.members, trip_id: @meetup_profile.trip_id }
    end

    assert_redirected_to meetup_profile_path(assigns(:meetup_profile))
  end

  test "should show meetup_profile" do
    get :show, id: @meetup_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meetup_profile
    assert_response :success
  end

  test "should update meetup_profile" do
    put :update, id: @meetup_profile, meetup_profile: { group_id: @meetup_profile.group_id, groupname: @meetup_profile.groupname, image: @meetup_profile.image, member_names: @meetup_profile.member_names, members: @meetup_profile.members, trip_id: @meetup_profile.trip_id }
    assert_redirected_to meetup_profile_path(assigns(:meetup_profile))
  end

  test "should destroy meetup_profile" do
    assert_difference('MeetupProfile.count', -1) do
      delete :destroy, id: @meetup_profile
    end

    assert_redirected_to meetup_profiles_path
  end
end
