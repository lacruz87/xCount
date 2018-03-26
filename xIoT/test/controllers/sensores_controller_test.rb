require 'test_helper'

class SensoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sensor = sensores(:one)
  end

  test "should get index" do
    get sensores_url
    assert_response :success
  end

  test "should get new" do
    get new_sensor_url
    assert_response :success
  end

  test "should create sensor" do
    assert_difference('Sensor.count') do
      post sensores_url, params: { sensor: { almacen: @sensor.almacen, centro: @sensor.centro, coreid: @sensor.coreid, empresa_id: @sensor.empresa_id, factor: @sensor.factor, tipo: @sensor.tipo, ubicacion: @sensor.ubicacion, ultima_conexion: @sensor.ultima_conexion } }
    end

    assert_redirected_to sensor_url(Sensor.last)
  end

  test "should show sensor" do
    get sensor_url(@sensor)
    assert_response :success
  end

  test "should get edit" do
    get edit_sensor_url(@sensor)
    assert_response :success
  end

  test "should update sensor" do
    patch sensor_url(@sensor), params: { sensor: { almacen: @sensor.almacen, centro: @sensor.centro, coreid: @sensor.coreid, empresa_id: @sensor.empresa_id, factor: @sensor.factor, tipo: @sensor.tipo, ubicacion: @sensor.ubicacion, ultima_conexion: @sensor.ultima_conexion } }
    assert_redirected_to sensor_url(@sensor)
  end

  test "should destroy sensor" do
    assert_difference('Sensor.count', -1) do
      delete sensor_url(@sensor)
    end

    assert_redirected_to sensores_url
  end
end
