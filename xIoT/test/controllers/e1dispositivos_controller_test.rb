require 'test_helper'

class E1dispositivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e1dispositivo = e1dispositivos(:one)
  end

  test "should get index" do
    get e1dispositivos_url
    assert_response :success
  end

  test "should get new" do
    get new_e1dispositivo_url
    assert_response :success
  end

  test "should create e1dispositivo" do
    assert_difference('E1dispositivo.count') do
      post e1dispositivos_url, params: { e1dispositivo: { coreid: @e1dispositivo.coreid, e1centro_id: @e1dispositivo.e1centro_id, e1recurso_id: @e1dispositivo.e1recurso_id, fabricante_core: @e1dispositivo.fabricante_core, firmware_version: @e1dispositivo.firmware_version, instalacion_ref: @e1dispositivo.instalacion_ref, software_version: @e1dispositivo.software_version, tipo_dispositivo: @e1dispositivo.tipo_dispositivo } }
    end

    assert_redirected_to e1dispositivo_url(E1dispositivo.last)
  end

  test "should show e1dispositivo" do
    get e1dispositivo_url(@e1dispositivo)
    assert_response :success
  end

  test "should get edit" do
    get edit_e1dispositivo_url(@e1dispositivo)
    assert_response :success
  end

  test "should update e1dispositivo" do
    patch e1dispositivo_url(@e1dispositivo), params: { e1dispositivo: { coreid: @e1dispositivo.coreid, e1centro_id: @e1dispositivo.e1centro_id, e1recurso_id: @e1dispositivo.e1recurso_id, fabricante_core: @e1dispositivo.fabricante_core, firmware_version: @e1dispositivo.firmware_version, instalacion_ref: @e1dispositivo.instalacion_ref, software_version: @e1dispositivo.software_version, tipo_dispositivo: @e1dispositivo.tipo_dispositivo } }
    assert_redirected_to e1dispositivo_url(@e1dispositivo)
  end

  test "should destroy e1dispositivo" do
    assert_difference('E1dispositivo.count', -1) do
      delete e1dispositivo_url(@e1dispositivo)
    end

    assert_redirected_to e1dispositivos_url
  end
end
