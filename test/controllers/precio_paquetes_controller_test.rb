require 'test_helper'

class PrecioPaquetesControllerTest < ActionController::TestCase
  setup do
    @precio_paquete = precio_paquetes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:precio_paquetes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create precio_paquete" do
    assert_difference('PrecioPaquete.count') do
      post :create, precio_paquete: { precio: @precio_paquete.precio, tipo_paquete: @precio_paquete.tipo_paquete }
    end

    assert_redirected_to precio_paquete_path(assigns(:precio_paquete))
  end

  test "should show precio_paquete" do
    get :show, id: @precio_paquete
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @precio_paquete
    assert_response :success
  end

  test "should update precio_paquete" do
    patch :update, id: @precio_paquete, precio_paquete: { precio: @precio_paquete.precio, tipo_paquete: @precio_paquete.tipo_paquete }
    assert_redirected_to precio_paquete_path(assigns(:precio_paquete))
  end

  test "should destroy precio_paquete" do
    assert_difference('PrecioPaquete.count', -1) do
      delete :destroy, id: @precio_paquete
    end

    assert_redirected_to precio_paquetes_path
  end
end
