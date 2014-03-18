require 'test_helper'

class AutobusesControllerTest < ActionController::TestCase
  setup do
    @autobus = autobuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:autobuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create autobus" do
    assert_difference('Autobus.count') do
      post :create, autobus: { capacidad: @autobus.capacidad, codigo: @autobus.codigo, is_active: @autobus.is_active, marca: @autobus.marca, modelo: @autobus.modelo }
    end

    assert_redirected_to autobus_path(assigns(:autobus))
  end

  test "should show autobus" do
    get :show, id: @autobus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @autobus
    assert_response :success
  end

  test "should update autobus" do
    patch :update, id: @autobus, autobus: { capacidad: @autobus.capacidad, codigo: @autobus.codigo, is_active: @autobus.is_active, marca: @autobus.marca, modelo: @autobus.modelo }
    assert_redirected_to autobus_path(assigns(:autobus))
  end

  test "should destroy autobus" do
    assert_difference('Autobus.count', -1) do
      delete :destroy, id: @autobus
    end

    assert_redirected_to autobuses_path
  end
end
