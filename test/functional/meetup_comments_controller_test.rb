require 'test_helper'

class MeetupCommentsControllerTest < ActionController::TestCase
  setup do
    @meetup_comment = meetup_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meetup_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meetup_comment" do
    assert_difference('MeetupComment.count') do
      post :create, meetup_comment: { comment: @meetup_comment.comment, event_id: @meetup_comment.event_id, user_id: @meetup_comment.user_id, username: @meetup_comment.username }
    end

    assert_redirected_to meetup_comment_path(assigns(:meetup_comment))
  end

  test "should show meetup_comment" do
    get :show, id: @meetup_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meetup_comment
    assert_response :success
  end

  test "should update meetup_comment" do
    put :update, id: @meetup_comment, meetup_comment: { comment: @meetup_comment.comment, event_id: @meetup_comment.event_id, user_id: @meetup_comment.user_id, username: @meetup_comment.username }
    assert_redirected_to meetup_comment_path(assigns(:meetup_comment))
  end

  test "should destroy meetup_comment" do
    assert_difference('MeetupComment.count', -1) do
      delete :destroy, id: @meetup_comment
    end

    assert_redirected_to meetup_comments_path
  end
end
