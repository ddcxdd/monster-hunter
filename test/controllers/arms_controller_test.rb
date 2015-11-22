require 'test_helper'

class ArmsControllerTest < ActionController::TestCase
  setup do
    @arm = arms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arm" do
    assert_difference('Arm.count') do
      post :create, arm: {attack: @arm.attack, comment: @arm.comment, hyouka: @arm.hyouka, item: @arm.item, item_number: @arm.item_number, max_attack: @arm.max_attack, max_level: @arm.max_level, name: @arm.name, rare: @arm.rare, series: @arm.series, skill: @arm.skill, zokusei: @arm.zokusei}
    end

    assert_redirected_to arm_path(assigns(:arm))
  end

  test "should show arm" do
    get :show, id: @arm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arm
    assert_response :success
  end

  test "should update arm" do
    patch :update, id: @arm, arm: {attack: @arm.attack, comment: @arm.comment, hyouka: @arm.hyouka, item: @arm.item, item_number: @arm.item_number, max_attack: @arm.max_attack, max_level: @arm.max_level, name: @arm.name, rare: @arm.rare, series: @arm.series, skill: @arm.skill, zokusei: @arm.zokusei}
    assert_redirected_to arm_path(assigns(:arm))
  end

  test "should destroy arm" do
    assert_difference('Arm.count', -1) do
      delete :destroy, id: @arm
    end

    assert_redirected_to arms_path
  end
end
