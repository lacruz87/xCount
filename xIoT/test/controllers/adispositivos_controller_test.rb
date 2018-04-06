require 'test_helper'

class AdispositivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adispositivo = adispositivos(:one)
  end

  test "should get index" do
    get adispositivos_url
    assert_response :success
  end

  test "should get new" do
    get new_adispositivo_url
    assert_response :success
  end

  test "should create adispositivo" do
    assert_difference('Adispositivo.count') do
      post adispositivos_url, params: { adispositivo: { acentro_id: @adispositivo.acentro_id, arecurso_id: @adispositivo.arecurso_id, coreid: @adispositivo.coreid, fabricante_core: @adispositivo.fabricante_core, firmware_version: @adispositivo.firmware_version, instalacion_ref: @adispositivo.instalacion_ref, software_version: @adispositivo.software_version, tipo_dispositivo: @adispositivo.tipo_dispositivo } }
    end

    assert_redirected_to adispositivo_url(Adispositivo.last)
  end

  test "should show adispositivo" do
    get adispositivo_url(@adispositivo)
    assert_response :success
  end

  test "should get edit" do
    get edit_adispositivo_url(@adispositivo)
    assert_response :success
  end

  test "should update adispositivo" do
    patch adispositivo_url(@adispositivo), params: { adispositivo: { acentro_id: @adispositivo.acentro_id, arecurso_id: @adispositivo.arecurso_id, coreid: @adispositivo.coreid, fabricante_core: @adispositivo.fabricante_core, firmware_version: @adispositivo.firmware_version, instalacion_ref: @adispositivo.instalacion_ref, software_version: @adispositivo.software_version, tipo_dispositivo: @adispositivo.tipo_dispositivo } }
    assert_redirected_to adispositivo_url(@adispositivo)
  end

  test "should destroy adispositivo" do
    assert_difference('Adispositivo.count', -1) do
      delete adispositivo_url(@adispositivo)
    end

    assert_redirected_to adispositivos_url
  end
end
