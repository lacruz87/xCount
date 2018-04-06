require 'test_helper'

class E1centrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e1centro = e1centros(:one)
  end

  test "should get index" do
    get e1centros_url
    assert_response :success
  end

  test "should get new" do
    get new_e1centro_url
    assert_response :success
  end

  test "should create e1centro" do
    assert_difference('E1centro.count') do
      post e1centros_url, params: { e1centro: { comuna: @e1centro.comuna, descripcion: @e1centro.descripcion, direccion: @e1centro.direccion, e1empresa_id: @e1centro.e1empresa_id, lat: @e1centro.lat, lng: @e1centro.lng, nombre: @e1centro.nombre, numero: @e1centro.numero, region: @e1centro.region } }
    end

    assert_redirected_to e1centro_url(E1centro.last)
  end

  test "should show e1centro" do
    get e1centro_url(@e1centro)
    assert_response :success
  end

  test "should get edit" do
    get edit_e1centro_url(@e1centro)
    assert_response :success
  end

  test "should update e1centro" do
    patch e1centro_url(@e1centro), params: { e1centro: { comuna: @e1centro.comuna, descripcion: @e1centro.descripcion, direccion: @e1centro.direccion, e1empresa_id: @e1centro.e1empresa_id, lat: @e1centro.lat, lng: @e1centro.lng, nombre: @e1centro.nombre, numero: @e1centro.numero, region: @e1centro.region } }
    assert_redirected_to e1centro_url(@e1centro)
  end

  test "should destroy e1centro" do
    assert_difference('E1centro.count', -1) do
      delete e1centro_url(@e1centro)
    end

    assert_redirected_to e1centros_url
  end
end
