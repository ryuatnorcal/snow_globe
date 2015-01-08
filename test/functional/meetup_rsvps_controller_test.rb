require 'test_helper'

class MeetupRsvpsControllerTest < ActionController::TestCase
  setup do
    @meetup_rsvp = meetup_rsvps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meetup_rsvps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meetup_rsvp" do
    assert_difference('MeetupRsvp.count') do
      post :create, meetup_rsvp: { attend: @meetup_rsvp.attend, comment: @meetup_rsvp.comment, event_id: @meetup_rsvp.event_id, rsvp: @meetup_rsvp.rsvp, user_id: @meetup_rsvp.user_id }
    end

    assert_redirected_to meetup_rsvp_path(assigns(:meetup_rsvp))
  end

  test "should show meetup_rsvp" do
    get :show, id: @meetup_rsvp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meetup_rsvp
    assert_response :success
  end

  test "should update meetup_rsvp" do
    put :update, id: @meetup_rsvp, meetup_rsvp: { attend: @meetup_rsvp.attend, comment: @meetup_rsvp.comment, event_id: @meetup_rsvp.event_id, rsvp: @meetup_rsvp.rsvp, user_id: @meetup_rsvp.user_id }
    assert_redirected_to meetup_rsvp_path(assigns(:meetup_rsvp))
  end

  test "should destroy meetup_rsvp" do
    assert_difference('MeetupRsvp.count', -1) do
      delete :destroy, id: @meetup_rsvp
    end

    assert_redirected_to meetup_rsvps_path
  end
end
