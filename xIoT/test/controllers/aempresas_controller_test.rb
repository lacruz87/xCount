require 'test_helper'

class AempresasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aempresa = aempresas(:one)
  end

  test "should get index" do
    get aempresas_url
    assert_response :success
  end

  test "should get new" do
    get new_aempresa_url
    assert_response :success
  end

  test "should create aempresa" do
    assert_difference('Aempresa.count') do
      post aempresas_url, params: { aempresa: { creado_por: @aempresa.creado_por, nombre_empresa: @aempresa.nombre_empresa, rut_empresa: @aempresa.rut_empresa, tipo: @aempresa.tipo, url_api: @aempresa.url_api, url_app: @aempresa.url_app } }
    end

    assert_redirected_to aempresa_url(Aempresa.last)
  end

  test "should show aempresa" do
    get aempresa_url(@aempresa)
    assert_response :success
  end

  test "should get edit" do
    get edit_aempresa_url(@aempresa)
    assert_response :success
  end

  test "should update aempresa" do
    patch aempresa_url(@aempresa), params: { aempresa: { creado_por: @aempresa.creado_por, nombre_empresa: @aempresa.nombre_empresa, rut_empresa: @aempresa.rut_empresa, tipo: @aempresa.tipo, url_api: @aempresa.url_api, url_app: @aempresa.url_app } }
    assert_redirected_to aempresa_url(@aempresa)
  end

  test "should destroy aempresa" do
    assert_difference('Aempresa.count', -1) do
      delete aempresa_url(@aempresa)
    end

    assert_redirected_to aempresas_url
  end
end
