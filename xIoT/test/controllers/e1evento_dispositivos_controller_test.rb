require 'test_helper'

class E1eventoDispositivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e1evento_dispositivo = e1evento_dispositivos(:one)
  end

  test "should get index" do
    get e1evento_dispositivos_url
    assert_response :success
  end

  test "should get new" do
    get new_e1evento_dispositivo_url
    assert_response :success
  end

  test "should create e1evento_dispositivo" do
    assert_difference('E1eventoDispositivo.count') do
      post e1evento_dispositivos_url, params: { e1evento_dispositivo: { UM: @e1evento_dispositivo.UM, clasificacion_evento: @e1evento_dispositivo.clasificacion_evento, e1dispositivo_id: @e1evento_dispositivo.e1dispositivo_id, e1recurso_id: @e1evento_dispositivo.e1recurso_id, e1tipo_evento_id: @e1evento_dispositivo.e1tipo_evento_id, factor: @e1evento_dispositivo.factor, pin: @e1evento_dispositivo.pin, sub_tipo_evento: @e1evento_dispositivo.sub_tipo_evento } }
    end

    assert_redirected_to e1evento_dispositivo_url(E1eventoDispositivo.last)
  end

  test "should show e1evento_dispositivo" do
    get e1evento_dispositivo_url(@e1evento_dispositivo)
    assert_response :success
  end

  test "should get edit" do
    get edit_e1evento_dispositivo_url(@e1evento_dispositivo)
    assert_response :success
  end

  test "should update e1evento_dispositivo" do
    patch e1evento_dispositivo_url(@e1evento_dispositivo), params: { e1evento_dispositivo: { UM: @e1evento_dispositivo.UM, clasificacion_evento: @e1evento_dispositivo.clasificacion_evento, e1dispositivo_id: @e1evento_dispositivo.e1dispositivo_id, e1recurso_id: @e1evento_dispositivo.e1recurso_id, e1tipo_evento_id: @e1evento_dispositivo.e1tipo_evento_id, factor: @e1evento_dispositivo.factor, pin: @e1evento_dispositivo.pin, sub_tipo_evento: @e1evento_dispositivo.sub_tipo_evento } }
    assert_redirected_to e1evento_dispositivo_url(@e1evento_dispositivo)
  end

  test "should destroy e1evento_dispositivo" do
    assert_difference('E1eventoDispositivo.count', -1) do
      delete e1evento_dispositivo_url(@e1evento_dispositivo)
    end

    assert_redirected_to e1evento_dispositivos_url
  end
end
