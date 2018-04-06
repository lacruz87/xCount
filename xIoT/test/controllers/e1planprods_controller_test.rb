require 'test_helper'

class E1planprodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e1planprod = e1planprods(:one)
  end

  test "should get index" do
    get e1planprods_url
    assert_response :success
  end

  test "should get new" do
    get new_e1planprod_url
    assert_response :success
  end

  test "should create e1planprod" do
    assert_difference('E1planprod.count') do
      post e1planprods_url, params: { e1planprod: { e1articulo_id: @e1planprod.e1articulo_id, e1recurso_id: @e1planprod.e1recurso_id, fin_plan: @e1planprod.fin_plan, fin_real: @e1planprod.fin_real, inicio_plan: @e1planprod.inicio_plan, inicio_real: @e1planprod.inicio_real, orden_trabajo: @e1planprod.orden_trabajo, q_plan: @e1planprod.q_plan } }
    end

    assert_redirected_to e1planprod_url(E1planprod.last)
  end

  test "should show e1planprod" do
    get e1planprod_url(@e1planprod)
    assert_response :success
  end

  test "should get edit" do
    get edit_e1planprod_url(@e1planprod)
    assert_response :success
  end

  test "should update e1planprod" do
    patch e1planprod_url(@e1planprod), params: { e1planprod: { e1articulo_id: @e1planprod.e1articulo_id, e1recurso_id: @e1planprod.e1recurso_id, fin_plan: @e1planprod.fin_plan, fin_real: @e1planprod.fin_real, inicio_plan: @e1planprod.inicio_plan, inicio_real: @e1planprod.inicio_real, orden_trabajo: @e1planprod.orden_trabajo, q_plan: @e1planprod.q_plan } }
    assert_redirected_to e1planprod_url(@e1planprod)
  end

  test "should destroy e1planprod" do
    assert_difference('E1planprod.count', -1) do
      delete e1planprod_url(@e1planprod)
    end

    assert_redirected_to e1planprods_url
  end
end
