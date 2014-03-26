require 'test_helper'

class BoletosControllerTest < ActionController::TestCase
  setup do
    @boleto = boletos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boletos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boleto" do
    assert_difference('Boleto.count') do
      post :create, boleto: { asiento_id: @boleto.asiento_id, descuento: @boleto.descuento, fecha: @boleto.fecha, identidad: @boleto.identidad, itinerario_id: @boleto.itinerario_id, nombre: @boleto.nombre, precio_boletos_id: @boleto.precio_boletos_id, subtotal: @boleto.subtotal, terminal_id: @boleto.terminal_id, total: @boleto.total }
    end

    assert_redirected_to boleto_path(assigns(:boleto))
  end

  test "should show boleto" do
    get :show, id: @boleto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boleto
    assert_response :success
  end

  test "should update boleto" do
    patch :update, id: @boleto, boleto: { asiento_id: @boleto.asiento_id, descuento: @boleto.descuento, fecha: @boleto.fecha, identidad: @boleto.identidad, itinerario_id: @boleto.itinerario_id, nombre: @boleto.nombre, precio_boletos_id: @boleto.precio_boletos_id, subtotal: @boleto.subtotal, terminal_id: @boleto.terminal_id, total: @boleto.total }
    assert_redirected_to boleto_path(assigns(:boleto))
  end

  test "should destroy boleto" do
    assert_difference('Boleto.count', -1) do
      delete :destroy, id: @boleto
    end

    assert_redirected_to boletos_path
  end
end
