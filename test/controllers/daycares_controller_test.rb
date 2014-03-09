require 'test_helper'

class DaycaresControllerTest < ActionController::TestCase
  setup do
    @daycare = daycares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daycares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daycare" do
    assert_difference('Daycare.count') do
      post :create, daycare: { atk_iv: @daycare.atk_iv, hp_iv: @daycare.hp_iv, pokemon_id: @daycare.pokemon_id, user_id: @daycare.user_id }
    end

    assert_redirected_to daycare_path(assigns(:daycare))
  end

  test "should show daycare" do
    get :show, id: @daycare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daycare
    assert_response :success
  end

  test "should update daycare" do
    patch :update, id: @daycare, daycare: { atk_iv: @daycare.atk_iv, hp_iv: @daycare.hp_iv, pokemon_id: @daycare.pokemon_id, user_id: @daycare.user_id }
    assert_redirected_to daycare_path(assigns(:daycare))
  end

  test "should destroy daycare" do
    assert_difference('Daycare.count', -1) do
      delete :destroy, id: @daycare
    end

    assert_redirected_to daycares_path
  end
end
