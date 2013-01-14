require 'test_helper'

class FellowsControllerTest < ActionController::TestCase
  setup do
    @fellow = fellows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fellows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fellow" do
    assert_difference('Fellow.count') do
      post :create, fellow: {  }
    end

    assert_response 201
  end

  test "should show fellow" do
    get :show, id: @fellow
    assert_response :success
  end

  test "should update fellow" do
    put :update, id: @fellow, fellow: {  }
    assert_response 204
  end

  test "should destroy fellow" do
    assert_difference('Fellow.count', -1) do
      delete :destroy, id: @fellow
    end

    assert_response 204
  end
end
