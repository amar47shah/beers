require 'test_helper'

class BeveragesControllerTest < ActionController::TestCase
  setup do
    @beverage = beverages(:natty)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beverages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beverage" do
    assert_difference('Beverage.count') do
      post :create, beverage: { name: @beverage.name, upc: @beverage.upc }
    end

    assert_redirected_to beverage_path(assigns(:beverage))
  end

  test "should show beverage" do
    get :show, id: @beverage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beverage
    assert_response :success
  end

  test "should update beverage" do
    patch :update, id: @beverage, beverage: { name: @beverage.name, upc: @beverage.upc}
    assert_redirected_to beverage_path(assigns(:beverage))
  end

  test "should destroy beverage" do
    assert_difference('Beverage.count', -1) do
      delete :destroy, id: @beverage
    end

    assert_redirected_to beverages_path
  end
end
