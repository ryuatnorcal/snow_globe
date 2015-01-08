require 'test_helper'

class ScaffordsControllerTest < ActionController::TestCase
  setup do
    @scafford = scaffords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scaffords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scafford" do
    assert_difference('Scafford.count') do
      post :create, scafford: { city: @scafford.city, cost: @scafford.cost, country: @scafford.country, date: @scafford.date, discription: @scafford.discription, distination: @scafford.distination, location: @scafford.location, meetup: @scafford.meetup, organaizer_id: @scafford.organaizer_id, organaizer_name: @scafford.organaizer_name, state: @scafford.state, title: @scafford.title }
    end

    assert_redirected_to scafford_path(assigns(:scafford))
  end

  test "should show scafford" do
    get :show, id: @scafford
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scafford
    assert_response :success
  end

  test "should update scafford" do
    put :update, id: @scafford, scafford: { city: @scafford.city, cost: @scafford.cost, country: @scafford.country, date: @scafford.date, discription: @scafford.discription, distination: @scafford.distination, location: @scafford.location, meetup: @scafford.meetup, organaizer_id: @scafford.organaizer_id, organaizer_name: @scafford.organaizer_name, state: @scafford.state, title: @scafford.title }
    assert_redirected_to scafford_path(assigns(:scafford))
  end

  test "should destroy scafford" do
    assert_difference('Scafford.count', -1) do
      delete :destroy, id: @scafford
    end

    assert_redirected_to scaffords_path
  end
end
