require 'test_helper'

class ArecursosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arecurso = arecursos(:one)
  end

  test "should get index" do
    get arecursos_url
    assert_response :success
  end

  test "should get new" do
    get new_arecurso_url
    assert_response :success
  end

  test "should create arecurso" do
    assert_difference('Arecurso.count') do
      post arecursos_url, params: { arecurso: { acentro_id: @arecurso.acentro_id, nombre: @arecurso.nombre } }
    end

    assert_redirected_to arecurso_url(Arecurso.last)
  end

  test "should show arecurso" do
    get arecurso_url(@arecurso)
    assert_response :success
  end

  test "should get edit" do
    get edit_arecurso_url(@arecurso)
    assert_response :success
  end

  test "should update arecurso" do
    patch arecurso_url(@arecurso), params: { arecurso: { acentro_id: @arecurso.acentro_id, nombre: @arecurso.nombre } }
    assert_redirected_to arecurso_url(@arecurso)
  end

  test "should destroy arecurso" do
    assert_difference('Arecurso.count', -1) do
      delete arecurso_url(@arecurso)
    end

    assert_redirected_to arecursos_url
  end
end
