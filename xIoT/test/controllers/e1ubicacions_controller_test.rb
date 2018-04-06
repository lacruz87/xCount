require 'test_helper'

class E1ubicacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e1ubicacion = e1ubicacions(:one)
  end

  test "should get index" do
    get e1ubicacions_url
    assert_response :success
  end

  test "should get new" do
    get new_e1ubicacion_url
    assert_response :success
  end

  test "should create e1ubicacion" do
    assert_difference('E1ubicacion.count') do
      post e1ubicacions_url, params: { e1ubicacion: { almacen: @e1ubicacion.almacen, nombre: @e1ubicacion.nombre } }
    end

    assert_redirected_to e1ubicacion_url(E1ubicacion.last)
  end

  test "should show e1ubicacion" do
    get e1ubicacion_url(@e1ubicacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_e1ubicacion_url(@e1ubicacion)
    assert_response :success
  end

  test "should update e1ubicacion" do
    patch e1ubicacion_url(@e1ubicacion), params: { e1ubicacion: { almacen: @e1ubicacion.almacen, nombre: @e1ubicacion.nombre } }
    assert_redirected_to e1ubicacion_url(@e1ubicacion)
  end

  test "should destroy e1ubicacion" do
    assert_difference('E1ubicacion.count', -1) do
      delete e1ubicacion_url(@e1ubicacion)
    end

    assert_redirected_to e1ubicacions_url
  end
end
