require 'test_helper'

class HakkensControllerTest < ActionController::TestCase
  setup do
    @hakken = hakkens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hakkens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hakken" do
    assert_difference('Hakken.count') do
      post :create, hakken: {day_night: @hakken.day_night, island: @hakken.island, kiseki_name: @hakken.kiseki_name, kiseki_number: @hakken.kiseki_number, name: @hakken.name, possibility: @hakken.possibility, quest_name: @hakken.quest_name, quest_number: @hakken.quest_number}
    end

    assert_redirected_to hakken_path(assigns(:hakken))
  end

  test "should show hakken" do
    get :show, id: @hakken
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hakken
    assert_response :success
  end

  test "should update hakken" do
    patch :update, id: @hakken, hakken: {day_night: @hakken.day_night, island: @hakken.island, kiseki_name: @hakken.kiseki_name, kiseki_number: @hakken.kiseki_number, name: @hakken.name, possibility: @hakken.possibility, quest_name: @hakken.quest_name, quest_number: @hakken.quest_number}
    assert_redirected_to hakken_path(assigns(:hakken))
  end

  test "should destroy hakken" do
    assert_difference('Hakken.count', -1) do
      delete :destroy, id: @hakken
    end

    assert_redirected_to hakkens_path
  end
end
