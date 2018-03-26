require 'test_helper'

class ServiciosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get servicios_index_url
    assert_response :success
  end

  test "should get contador" do
    get servicios_contador_url
    assert_response :success
  end

  test "should get grafico01" do
    get servicios_grafico01_url
    assert_response :success
  end

  test "should get reporte01" do
    get servicios_reporte01_url
    assert_response :success
  end

end
