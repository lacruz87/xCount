require 'test_helper'

class AtipoEventosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atipo_evento = atipo_eventos(:one)
  end

  test "should get index" do
    get atipo_eventos_url
    assert_response :success
  end

  test "should get new" do
    get new_atipo_evento_url
    assert_response :success
  end

  test "should create atipo_evento" do
    assert_difference('AtipoEvento.count') do
      post atipo_eventos_url, params: { atipo_evento: { nombre: @atipo_evento.nombre, ruta_bd: @atipo_evento.ruta_bd } }
    end

    assert_redirected_to atipo_evento_url(AtipoEvento.last)
  end

  test "should show atipo_evento" do
    get atipo_evento_url(@atipo_evento)
    assert_response :success
  end

  test "should get edit" do
    get edit_atipo_evento_url(@atipo_evento)
    assert_response :success
  end

  test "should update atipo_evento" do
    patch atipo_evento_url(@atipo_evento), params: { atipo_evento: { nombre: @atipo_evento.nombre, ruta_bd: @atipo_evento.ruta_bd } }
    assert_redirected_to atipo_evento_url(@atipo_evento)
  end

  test "should destroy atipo_evento" do
    assert_difference('AtipoEvento.count', -1) do
      delete atipo_evento_url(@atipo_evento)
    end

    assert_redirected_to atipo_eventos_url
  end
end
