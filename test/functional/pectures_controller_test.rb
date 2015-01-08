require 'test_helper'

class PecturesControllerTest < ActionController::TestCase
  setup do
    @pecture = pectures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pectures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pecture" do
    assert_difference('Pecture.count') do
      post :create, pecture: {  }
    end

    assert_redirected_to pecture_path(assigns(:pecture))
  end

  test "should show pecture" do
    get :show, id: @pecture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pecture
    assert_response :success
  end

  test "should update pecture" do
    put :update, id: @pecture, pecture: {  }
    assert_redirected_to pecture_path(assigns(:pecture))
  end

  test "should destroy pecture" do
    assert_difference('Pecture.count', -1) do
      delete :destroy, id: @pecture
    end

    assert_redirected_to pectures_path
  end
end
