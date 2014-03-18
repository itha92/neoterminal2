require 'test_helper'

class PasajerosControllerTest < ActionController::TestCase
  setup do
    @pasajero = pasajeros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pasajeros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pasajero" do
    assert_difference('Pasajero.count') do
      post :create, pasajero: { asiento_id: @pasajero.asiento_id, boleto_id: @pasajero.boleto_id, fecha_nacimiento: @pasajero.fecha_nacimiento, identidad: @pasajero.identidad, nombre: @pasajero.nombre }
    end

    assert_redirected_to pasajero_path(assigns(:pasajero))
  end

  test "should show pasajero" do
    get :show, id: @pasajero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pasajero
    assert_response :success
  end

  test "should update pasajero" do
    patch :update, id: @pasajero, pasajero: { asiento_id: @pasajero.asiento_id, boleto_id: @pasajero.boleto_id, fecha_nacimiento: @pasajero.fecha_nacimiento, identidad: @pasajero.identidad, nombre: @pasajero.nombre }
    assert_redirected_to pasajero_path(assigns(:pasajero))
  end

  test "should destroy pasajero" do
    assert_difference('Pasajero.count', -1) do
      delete :destroy, id: @pasajero
    end

    assert_redirected_to pasajeros_path
  end
end
