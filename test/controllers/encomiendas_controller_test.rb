require 'test_helper'

class EncomiendasControllerTest < ActionController::TestCase
  setup do
    @encomienda = encomiendas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:encomiendas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create encomienda" do
    assert_difference('Encomienda.count') do
      post :create, encomienda: { destinatario: @encomienda.destinatario, destino: @encomienda.destino, fecha: @encomienda.fecha, is_delivered: @encomienda.is_delivered, is_onhold: @encomienda.is_onhold, is_shipped: @encomienda.is_shipped, origen: @encomienda.origen, peso: @encomienda.peso, precio_paquete_id: @encomienda.precio_paquete_id, remitente: @encomienda.remitente, terminal_id: @encomienda.terminal_id }
    end

    assert_redirected_to encomienda_path(assigns(:encomienda))
  end

  test "should show encomienda" do
    get :show, id: @encomienda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @encomienda
    assert_response :success
  end

  test "should update encomienda" do
    patch :update, id: @encomienda, encomienda: { destinatario: @encomienda.destinatario, destino: @encomienda.destino, fecha: @encomienda.fecha, is_delivered: @encomienda.is_delivered, is_onhold: @encomienda.is_onhold, is_shipped: @encomienda.is_shipped, origen: @encomienda.origen, peso: @encomienda.peso, precio_paquete_id: @encomienda.precio_paquete_id, remitente: @encomienda.remitente, terminal_id: @encomienda.terminal_id }
    assert_redirected_to encomienda_path(assigns(:encomienda))
  end

  test "should destroy encomienda" do
    assert_difference('Encomienda.count', -1) do
      delete :destroy, id: @encomienda
    end

    assert_redirected_to encomiendas_path
  end
end
