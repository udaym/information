require 'test_helper'

class InfomationsControllerTest < ActionController::TestCase
  setup do
    @infomation = infomations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:infomations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create infomation" do
    assert_difference('Infomation.count') do
      post :create, infomation: { age: @infomation.age, first_name: @infomation.first_name, last_name: @infomation.last_name }
    end

    assert_redirected_to infomation_path(assigns(:infomation))
  end

  test "should show infomation" do
    get :show, id: @infomation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @infomation
    assert_response :success
  end

  test "should update infomation" do
    patch :update, id: @infomation, infomation: { age: @infomation.age, first_name: @infomation.first_name, last_name: @infomation.last_name }
    assert_redirected_to infomation_path(assigns(:infomation))
  end

  test "should destroy infomation" do
    assert_difference('Infomation.count', -1) do
      delete :destroy, id: @infomation
    end

    assert_redirected_to infomations_path
  end
end
