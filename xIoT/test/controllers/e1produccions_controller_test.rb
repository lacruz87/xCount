require 'test_helper'

class E1produccionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e1produccion = e1produccions(:one)
  end

  test "should get index" do
    get e1produccions_url
    assert_response :success
  end

  test "should get new" do
    get new_e1produccion_url
    assert_response :success
  end

  test "should create e1produccion" do
    assert_difference('E1produccion.count') do
      post e1produccions_url, params: { e1produccion: { e1articulo_id: @e1produccion.e1articulo_id, e1recurso_id: @e1produccion.e1recurso_id, grupo: @e1produccion.grupo, in_ref: @e1produccion.in_ref, qty: @e1produccion.qty, timestamp: @e1produccion.timestamp } }
    end

    assert_redirected_to e1produccion_url(E1produccion.last)
  end

  test "should show e1produccion" do
    get e1produccion_url(@e1produccion)
    assert_response :success
  end

  test "should get edit" do
    get edit_e1produccion_url(@e1produccion)
    assert_response :success
  end

  test "should update e1produccion" do
    patch e1produccion_url(@e1produccion), params: { e1produccion: { e1articulo_id: @e1produccion.e1articulo_id, e1recurso_id: @e1produccion.e1recurso_id, grupo: @e1produccion.grupo, in_ref: @e1produccion.in_ref, qty: @e1produccion.qty, timestamp: @e1produccion.timestamp } }
    assert_redirected_to e1produccion_url(@e1produccion)
  end

  test "should destroy e1produccion" do
    assert_difference('E1produccion.count', -1) do
      delete e1produccion_url(@e1produccion)
    end

    assert_redirected_to e1produccions_url
  end
end
