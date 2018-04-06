require 'test_helper'

class E1reportingProdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e1reporting_prod = e1reporting_prods(:one)
  end

  test "should get index" do
    get e1reporting_prods_url
    assert_response :success
  end

  test "should get new" do
    get new_e1reporting_prod_url
    assert_response :success
  end

  test "should create e1reporting_prod" do
    assert_difference('E1reportingProd.count') do
      post e1reporting_prods_url, params: { e1reporting_prod: { Q: @e1reporting_prod.Q, Timestamp: @e1reporting_prod.Timestamp, articulo: @e1reporting_prod.articulo, categoria: @e1reporting_prod.categoria, centro: @e1reporting_prod.centro, familia: @e1reporting_prod.familia, recurso: @e1reporting_prod.recurso, referencia: @e1reporting_prod.referencia, sub_familia: @e1reporting_prod.sub_familia, time_Q: @e1reporting_prod.time_Q, timestamp_10m: @e1reporting_prod.timestamp_10m, timestamp_1h: @e1reporting_prod.timestamp_1h, timestamp_24h: @e1reporting_prod.timestamp_24h, timestamp_30m: @e1reporting_prod.timestamp_30m, timestamp_5m: @e1reporting_prod.timestamp_5m, timestamp_8h: @e1reporting_prod.timestamp_8h, timestamp_MM: @e1reporting_prod.timestamp_MM, timestamp_Y: @e1reporting_prod.timestamp_Y, timestamp_w: @e1reporting_prod.timestamp_w, ubicacion: @e1reporting_prod.ubicacion } }
    end

    assert_redirected_to e1reporting_prod_url(E1reportingProd.last)
  end

  test "should show e1reporting_prod" do
    get e1reporting_prod_url(@e1reporting_prod)
    assert_response :success
  end

  test "should get edit" do
    get edit_e1reporting_prod_url(@e1reporting_prod)
    assert_response :success
  end

  test "should update e1reporting_prod" do
    patch e1reporting_prod_url(@e1reporting_prod), params: { e1reporting_prod: { Q: @e1reporting_prod.Q, Timestamp: @e1reporting_prod.Timestamp, articulo: @e1reporting_prod.articulo, categoria: @e1reporting_prod.categoria, centro: @e1reporting_prod.centro, familia: @e1reporting_prod.familia, recurso: @e1reporting_prod.recurso, referencia: @e1reporting_prod.referencia, sub_familia: @e1reporting_prod.sub_familia, time_Q: @e1reporting_prod.time_Q, timestamp_10m: @e1reporting_prod.timestamp_10m, timestamp_1h: @e1reporting_prod.timestamp_1h, timestamp_24h: @e1reporting_prod.timestamp_24h, timestamp_30m: @e1reporting_prod.timestamp_30m, timestamp_5m: @e1reporting_prod.timestamp_5m, timestamp_8h: @e1reporting_prod.timestamp_8h, timestamp_MM: @e1reporting_prod.timestamp_MM, timestamp_Y: @e1reporting_prod.timestamp_Y, timestamp_w: @e1reporting_prod.timestamp_w, ubicacion: @e1reporting_prod.ubicacion } }
    assert_redirected_to e1reporting_prod_url(@e1reporting_prod)
  end

  test "should destroy e1reporting_prod" do
    assert_difference('E1reportingProd.count', -1) do
      delete e1reporting_prod_url(@e1reporting_prod)
    end

    assert_redirected_to e1reporting_prods_url
  end
end
