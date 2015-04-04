require 'test_helper'

class ReferenciaArticulosControllerTest < ActionController::TestCase
  setup do
    @referencia_articulo = referencia_articulos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referencia_articulos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referencia_articulo" do
    assert_difference('ReferenciaArticulo.count') do
      post :create, referencia_articulo: { articulo: @referencia_articulo.articulo, caja_id: @referencia_articulo.caja_id, cantidad: @referencia_articulo.cantidad, nombre_referencia: @referencia_articulo.nombre_referencia, talla: @referencia_articulo.talla, valor: @referencia_articulo.valor }
    end

    assert_redirected_to referencia_articulo_path(assigns(:referencia_articulo))
  end

  test "should show referencia_articulo" do
    get :show, id: @referencia_articulo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @referencia_articulo
    assert_response :success
  end

  test "should update referencia_articulo" do
    patch :update, id: @referencia_articulo, referencia_articulo: { articulo: @referencia_articulo.articulo, caja_id: @referencia_articulo.caja_id, cantidad: @referencia_articulo.cantidad, nombre_referencia: @referencia_articulo.nombre_referencia, talla: @referencia_articulo.talla, valor: @referencia_articulo.valor }
    assert_redirected_to referencia_articulo_path(assigns(:referencia_articulo))
  end

  test "should destroy referencia_articulo" do
    assert_difference('ReferenciaArticulo.count', -1) do
      delete :destroy, id: @referencia_articulo
    end

    assert_redirected_to referencia_articulos_path
  end
end
