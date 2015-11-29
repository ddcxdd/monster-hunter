require 'test_helper'

class BougusControllerTest < ActionController::TestCase
  setup do
    @bougu = bougus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bougus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bougu" do
    assert_difference('Bougu.count') do
      post :create, bougu: {arm_type: @bougu.arm_type, defence: @bougu.defence, max_level: @bougu.max_level, name: @bougu.name, position: @bougu.position, rare: @bougu.rare, series: @bougu.series, skill: @bougu.skill, wazatama: @bougu.wazatama}
    end

    assert_redirected_to bougu_path(assigns(:bougu))
  end

  test "should show bougu" do
    get :show, id: @bougu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bougu
    assert_response :success
  end

  test "should update bougu" do
    patch :update, id: @bougu, bougu: {arm_type: @bougu.arm_type, defence: @bougu.defence, max_level: @bougu.max_level, name: @bougu.name, position: @bougu.position, rare: @bougu.rare, series: @bougu.series, skill: @bougu.skill, wazatama: @bougu.wazatama}
    assert_redirected_to bougu_path(assigns(:bougu))
  end

  test "should destroy bougu" do
    assert_difference('Bougu.count', -1) do
      delete :destroy, id: @bougu
    end

    assert_redirected_to bougus_path
  end
end
