require 'test_helper'

class AsientosControllerTest < ActionController::TestCase
  setup do
    @asiento = asientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asiento" do
    assert_difference('Asiento.count') do
      post :create, asiento: { asiento_no: @asiento.asiento_no, autobus_id: @asiento.autobus_id, is_active: @asiento.is_active, tipo: @asiento.tipo }
    end

    assert_redirected_to asiento_path(assigns(:asiento))
  end

  test "should show asiento" do
    get :show, id: @asiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asiento
    assert_response :success
  end

  test "should update asiento" do
    patch :update, id: @asiento, asiento: { asiento_no: @asiento.asiento_no, autobus_id: @asiento.autobus_id, is_active: @asiento.is_active, tipo: @asiento.tipo }
    assert_redirected_to asiento_path(assigns(:asiento))
  end

  test "should destroy asiento" do
    assert_difference('Asiento.count', -1) do
      delete :destroy, id: @asiento
    end

    assert_redirected_to asientos_path
  end
end
