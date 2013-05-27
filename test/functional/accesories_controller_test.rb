require 'test_helper'

class AccesoriesControllerTest < ActionController::TestCase
  setup do
    @accesory = accesories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accesories)
  end

  test "should create accesory" do
    assert_difference('Accesory.count') do
      post :create, accesory: { name: @accesory.name, price: @accesory.price, used: @accesory.used }
    end

    assert_response 201
  end

  test "should show accesory" do
    get :show, id: @accesory
    assert_response :success
  end

  test "should update accesory" do
    put :update, id: @accesory, accesory: { name: @accesory.name, price: @accesory.price, used: @accesory.used }
    assert_response 204
  end

  test "should destroy accesory" do
    assert_difference('Accesory.count', -1) do
      delete :destroy, id: @accesory
    end

    assert_response 204
  end
end
