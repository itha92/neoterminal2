require 'test_helper'

class PrecioBoletosControllerTest < ActionController::TestCase
  setup do
    @precio_boleto = precio_boletos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:precio_boletos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create precio_boleto" do
    assert_difference('PrecioBoleto.count') do
      post :create, precio_boleto: { clase: @precio_boleto.clase, destino: @precio_boleto.destino, origen: @precio_boleto.origen, precio: @precio_boleto.precio }
    end

    assert_redirected_to precio_boleto_path(assigns(:precio_boleto))
  end

  test "should show precio_boleto" do
    get :show, id: @precio_boleto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @precio_boleto
    assert_response :success
  end

  test "should update precio_boleto" do
    patch :update, id: @precio_boleto, precio_boleto: { clase: @precio_boleto.clase, destino: @precio_boleto.destino, origen: @precio_boleto.origen, precio: @precio_boleto.precio }
    assert_redirected_to precio_boleto_path(assigns(:precio_boleto))
  end

  test "should destroy precio_boleto" do
    assert_difference('PrecioBoleto.count', -1) do
      delete :destroy, id: @precio_boleto
    end

    assert_redirected_to precio_boletos_path
  end
end
