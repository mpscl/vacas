require 'test_helper'

class KineControllerTest < ActionController::TestCase
  setup do
    @cow = kine(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kine)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cow" do
    assert_difference('Cow.count') do
      post :create, cow: { age: @cow.age, birthday: @cow.birthday, delivery: @cow.delivery, description: @cow.description, name: @cow.name, number: @cow.number }
    end

    assert_redirected_to cow_path(assigns(:cow))
  end

  test "should show cow" do
    get :show, id: @cow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cow
    assert_response :success
  end

  test "should update cow" do
    patch :update, id: @cow, cow: { age: @cow.age, birthday: @cow.birthday, delivery: @cow.delivery, description: @cow.description, name: @cow.name, number: @cow.number }
    assert_redirected_to cow_path(assigns(:cow))
  end

  test "should destroy cow" do
    assert_difference('Cow.count', -1) do
      delete :destroy, id: @cow
    end

    assert_redirected_to kine_path
  end
end
