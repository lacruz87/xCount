require 'test_helper'

class AcentrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acentro = acentros(:one)
  end

  test "should get index" do
    get acentros_url
    assert_response :success
  end

  test "should get new" do
    get new_acentro_url
    assert_response :success
  end

  test "should create acentro" do
    assert_difference('Acentro.count') do
      post acentros_url, params: { acentro: { aempresa_id: @acentro.aempresa_id, comuna: @acentro.comuna, descripcion: @acentro.descripcion, direccion: @acentro.direccion, lat: @acentro.lat, lng: @acentro.lng, nombre: @acentro.nombre, numero: @acentro.numero, region: @acentro.region } }
    end

    assert_redirected_to acentro_url(Acentro.last)
  end

  test "should show acentro" do
    get acentro_url(@acentro)
    assert_response :success
  end

  test "should get edit" do
    get edit_acentro_url(@acentro)
    assert_response :success
  end

  test "should update acentro" do
    patch acentro_url(@acentro), params: { acentro: { aempresa_id: @acentro.aempresa_id, comuna: @acentro.comuna, descripcion: @acentro.descripcion, direccion: @acentro.direccion, lat: @acentro.lat, lng: @acentro.lng, nombre: @acentro.nombre, numero: @acentro.numero, region: @acentro.region } }
    assert_redirected_to acentro_url(@acentro)
  end

  test "should destroy acentro" do
    assert_difference('Acentro.count', -1) do
      delete acentro_url(@acentro)
    end

    assert_redirected_to acentros_url
  end
end
