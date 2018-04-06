require 'test_helper'

class AeventoDispositivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aevento_dispositivo = aevento_dispositivos(:one)
  end

  test "should get index" do
    get aevento_dispositivos_url
    assert_response :success
  end

  test "should get new" do
    get new_aevento_dispositivo_url
    assert_response :success
  end

  test "should create aevento_dispositivo" do
    assert_difference('AeventoDispositivo.count') do
      post aevento_dispositivos_url, params: { aevento_dispositivo: { UM: @aevento_dispositivo.UM, adispositivo_id: @aevento_dispositivo.adispositivo_id, arecurso_id: @aevento_dispositivo.arecurso_id, atipo_evento_id: @aevento_dispositivo.atipo_evento_id, factor: @aevento_dispositivo.factor, pin: @aevento_dispositivo.pin, sub_tipo_evento: @aevento_dispositivo.sub_tipo_evento } }
    end

    assert_redirected_to aevento_dispositivo_url(AeventoDispositivo.last)
  end

  test "should show aevento_dispositivo" do
    get aevento_dispositivo_url(@aevento_dispositivo)
    assert_response :success
  end

  test "should get edit" do
    get edit_aevento_dispositivo_url(@aevento_dispositivo)
    assert_response :success
  end

  test "should update aevento_dispositivo" do
    patch aevento_dispositivo_url(@aevento_dispositivo), params: { aevento_dispositivo: { UM: @aevento_dispositivo.UM, adispositivo_id: @aevento_dispositivo.adispositivo_id, arecurso_id: @aevento_dispositivo.arecurso_id, atipo_evento_id: @aevento_dispositivo.atipo_evento_id, factor: @aevento_dispositivo.factor, pin: @aevento_dispositivo.pin, sub_tipo_evento: @aevento_dispositivo.sub_tipo_evento } }
    assert_redirected_to aevento_dispositivo_url(@aevento_dispositivo)
  end

  test "should destroy aevento_dispositivo" do
    assert_difference('AeventoDispositivo.count', -1) do
      delete aevento_dispositivo_url(@aevento_dispositivo)
    end

    assert_redirected_to aevento_dispositivos_url
  end
end
