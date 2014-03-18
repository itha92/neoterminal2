require 'test_helper'

class MantenimientosControllerTest < ActionController::TestCase
  setup do
    @mantenimiento = mantenimientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mantenimientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mantenimiento" do
    assert_difference('Mantenimiento.count') do
      post :create, mantenimiento: { autobus_id: @mantenimiento.autobus_id, fecha: @mantenimiento.fecha, kilometraje: @mantenimiento.kilometraje, observacion: @mantenimiento.observacion, precio: @mantenimiento.precio }
    end

    assert_redirected_to mantenimiento_path(assigns(:mantenimiento))
  end

  test "should show mantenimiento" do
    get :show, id: @mantenimiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mantenimiento
    assert_response :success
  end

  test "should update mantenimiento" do
    patch :update, id: @mantenimiento, mantenimiento: { autobus_id: @mantenimiento.autobus_id, fecha: @mantenimiento.fecha, kilometraje: @mantenimiento.kilometraje, observacion: @mantenimiento.observacion, precio: @mantenimiento.precio }
    assert_redirected_to mantenimiento_path(assigns(:mantenimiento))
  end

  test "should destroy mantenimiento" do
    assert_difference('Mantenimiento.count', -1) do
      delete :destroy, id: @mantenimiento
    end

    assert_redirected_to mantenimientos_path
  end
end
