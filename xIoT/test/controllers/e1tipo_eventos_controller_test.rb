require 'test_helper'

class E1tipoEventosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e1tipo_evento = e1tipo_eventos(:one)
  end

  test "should get index" do
    get e1tipo_eventos_url
    assert_response :success
  end

  test "should get new" do
    get new_e1tipo_evento_url
    assert_response :success
  end

  test "should create e1tipo_evento" do
    assert_difference('E1tipoEvento.count') do
      post e1tipo_eventos_url, params: { e1tipo_evento: { nombre: @e1tipo_evento.nombre, ruta_bd: @e1tipo_evento.ruta_bd } }
    end

    assert_redirected_to e1tipo_evento_url(E1tipoEvento.last)
  end

  test "should show e1tipo_evento" do
    get e1tipo_evento_url(@e1tipo_evento)
    assert_response :success
  end

  test "should get edit" do
    get edit_e1tipo_evento_url(@e1tipo_evento)
    assert_response :success
  end

  test "should update e1tipo_evento" do
    patch e1tipo_evento_url(@e1tipo_evento), params: { e1tipo_evento: { nombre: @e1tipo_evento.nombre, ruta_bd: @e1tipo_evento.ruta_bd } }
    assert_redirected_to e1tipo_evento_url(@e1tipo_evento)
  end

  test "should destroy e1tipo_evento" do
    assert_difference('E1tipoEvento.count', -1) do
      delete e1tipo_evento_url(@e1tipo_evento)
    end

    assert_redirected_to e1tipo_eventos_url
  end
end
