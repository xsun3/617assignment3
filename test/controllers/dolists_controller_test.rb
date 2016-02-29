require 'test_helper'

class DolistsControllerTest < ActionController::TestCase
  setup do
    @dolist = dolists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dolists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dolist" do
    assert_difference('Dolist.count') do
      post :create, dolist: { date: @dolist.date, do: @dolist.do }
    end

    assert_redirected_to dolist_path(assigns(:dolist))
  end

  test "should show dolist" do
    get :show, id: @dolist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dolist
    assert_response :success
  end

  test "should update dolist" do
    patch :update, id: @dolist, dolist: { date: @dolist.date, do: @dolist.do }
    assert_redirected_to dolist_path(assigns(:dolist))
  end

  test "should destroy dolist" do
    assert_difference('Dolist.count', -1) do
      delete :destroy, id: @dolist
    end

    assert_redirected_to dolists_path
  end
end
