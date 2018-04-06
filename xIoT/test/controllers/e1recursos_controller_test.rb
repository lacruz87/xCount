require 'test_helper'

class E1recursosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e1recurso = e1recursos(:one)
  end

  test "should get index" do
    get e1recursos_url
    assert_response :success
  end

  test "should get new" do
    get new_e1recurso_url
    assert_response :success
  end

  test "should create e1recurso" do
    assert_difference('E1recurso.count') do
      post e1recursos_url, params: { e1recurso: { e1centro_id: @e1recurso.e1centro_id, e1ubicacion_id: @e1recurso.e1ubicacion_id, familia: @e1recurso.familia, linea: @e1recurso.linea, nombre: @e1recurso.nombre, productividad_hora: @e1recurso.productividad_hora, tipo: @e1recurso.tipo } }
    end

    assert_redirected_to e1recurso_url(E1recurso.last)
  end

  test "should show e1recurso" do
    get e1recurso_url(@e1recurso)
    assert_response :success
  end

  test "should get edit" do
    get edit_e1recurso_url(@e1recurso)
    assert_response :success
  end

  test "should update e1recurso" do
    patch e1recurso_url(@e1recurso), params: { e1recurso: { e1centro_id: @e1recurso.e1centro_id, e1ubicacion_id: @e1recurso.e1ubicacion_id, familia: @e1recurso.familia, linea: @e1recurso.linea, nombre: @e1recurso.nombre, productividad_hora: @e1recurso.productividad_hora, tipo: @e1recurso.tipo } }
    assert_redirected_to e1recurso_url(@e1recurso)
  end

  test "should destroy e1recurso" do
    assert_difference('E1recurso.count', -1) do
      delete e1recurso_url(@e1recurso)
    end

    assert_redirected_to e1recursos_url
  end
end
