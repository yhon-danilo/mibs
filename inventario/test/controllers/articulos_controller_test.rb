require 'test_helper'

class ArticulosControllerTest < ActionController::TestCase
  setup do
    @articulo = articulos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articulos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create articulo" do
    assert_difference('Articulo.count') do
      post :create, articulo: { caja_id: @articulo.caja_id, cantidad_articulo: @articulo.cantidad_articulo, marca_id: @articulo.marca_id, nombre_articulo: @articulo.nombre_articulo, talla_articulo: @articulo.talla_articulo, valor_articulo: @articulo.valor_articulo }
    end

    assert_redirected_to articulo_path(assigns(:articulo))
  end

  test "should show articulo" do
    get :show, id: @articulo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @articulo
    assert_response :success
  end

  test "should update articulo" do
    patch :update, id: @articulo, articulo: { caja_id: @articulo.caja_id, cantidad_articulo: @articulo.cantidad_articulo, marca_id: @articulo.marca_id, nombre_articulo: @articulo.nombre_articulo, talla_articulo: @articulo.talla_articulo, valor_articulo: @articulo.valor_articulo }
    assert_redirected_to articulo_path(assigns(:articulo))
  end

  test "should destroy articulo" do
    assert_difference('Articulo.count', -1) do
      delete :destroy, id: @articulo
    end

    assert_redirected_to articulos_path
  end
end
