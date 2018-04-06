require 'test_helper'

class E1articulosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e1articulo = e1articulos(:one)
  end

  test "should get index" do
    get e1articulos_url
    assert_response :success
  end

  test "should get new" do
    get new_e1articulo_url
    assert_response :success
  end

  test "should create e1articulo" do
    assert_difference('E1articulo.count') do
      post e1articulos_url, params: { e1articulo: { UM: @e1articulo.UM, descripcion: @e1articulo.descripcion, familia: @e1articulo.familia, formato: @e1articulo.formato, sku: @e1articulo.sku, sub_Familia: @e1articulo.sub_Familia, ude1: @e1articulo.ude1, ude2: @e1articulo.ude2 } }
    end

    assert_redirected_to e1articulo_url(E1articulo.last)
  end

  test "should show e1articulo" do
    get e1articulo_url(@e1articulo)
    assert_response :success
  end

  test "should get edit" do
    get edit_e1articulo_url(@e1articulo)
    assert_response :success
  end

  test "should update e1articulo" do
    patch e1articulo_url(@e1articulo), params: { e1articulo: { UM: @e1articulo.UM, descripcion: @e1articulo.descripcion, familia: @e1articulo.familia, formato: @e1articulo.formato, sku: @e1articulo.sku, sub_Familia: @e1articulo.sub_Familia, ude1: @e1articulo.ude1, ude2: @e1articulo.ude2 } }
    assert_redirected_to e1articulo_url(@e1articulo)
  end

  test "should destroy e1articulo" do
    assert_difference('E1articulo.count', -1) do
      delete e1articulo_url(@e1articulo)
    end

    assert_redirected_to e1articulos_url
  end
end
