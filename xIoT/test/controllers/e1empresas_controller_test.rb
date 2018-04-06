require 'test_helper'

class E1empresasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e1empresa = e1empresas(:one)
  end

  test "should get index" do
    get e1empresas_url
    assert_response :success
  end

  test "should get new" do
    get new_e1empresa_url
    assert_response :success
  end

  test "should create e1empresa" do
    assert_difference('E1empresa.count') do
      post e1empresas_url, params: { e1empresa: { creado_por: @e1empresa.creado_por, nombre_empresa: @e1empresa.nombre_empresa, rut_empresa: @e1empresa.rut_empresa, tipo: @e1empresa.tipo, url_api: @e1empresa.url_api, url_app: @e1empresa.url_app } }
    end

    assert_redirected_to e1empresa_url(E1empresa.last)
  end

  test "should show e1empresa" do
    get e1empresa_url(@e1empresa)
    assert_response :success
  end

  test "should get edit" do
    get edit_e1empresa_url(@e1empresa)
    assert_response :success
  end

  test "should update e1empresa" do
    patch e1empresa_url(@e1empresa), params: { e1empresa: { creado_por: @e1empresa.creado_por, nombre_empresa: @e1empresa.nombre_empresa, rut_empresa: @e1empresa.rut_empresa, tipo: @e1empresa.tipo, url_api: @e1empresa.url_api, url_app: @e1empresa.url_app } }
    assert_redirected_to e1empresa_url(@e1empresa)
  end

  test "should destroy e1empresa" do
    assert_difference('E1empresa.count', -1) do
      delete e1empresa_url(@e1empresa)
    end

    assert_redirected_to e1empresas_url
  end
end
