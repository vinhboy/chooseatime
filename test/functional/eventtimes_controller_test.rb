require 'test_helper'

class EventtimesControllerTest < ActionController::TestCase
  setup do
    @eventtime = eventtimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eventtimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eventtime" do
    assert_difference('Eventtime.count') do
      post :create, :eventtime => @eventtime.attributes
    end

    assert_redirected_to eventtime_path(assigns(:eventtime))
  end

  test "should show eventtime" do
    get :show, :id => @eventtime.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @eventtime.to_param
    assert_response :success
  end

  test "should update eventtime" do
    put :update, :id => @eventtime.to_param, :eventtime => @eventtime.attributes
    assert_redirected_to eventtime_path(assigns(:eventtime))
  end

  test "should destroy eventtime" do
    assert_difference('Eventtime.count', -1) do
      delete :destroy, :id => @eventtime.to_param
    end

    assert_redirected_to eventtimes_path
  end
end
