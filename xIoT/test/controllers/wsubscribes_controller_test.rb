require 'test_helper'

class WsubscribesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wsubscribe = wsubscribes(:one)
  end

  test "should get index" do
    get wsubscribes_url
    assert_response :success
  end

  test "should get new" do
    get new_wsubscribe_url
    assert_response :success
  end

  test "should create wsubscribe" do
    assert_difference('Wsubscribe.count') do
      post wsubscribes_url, params: { wsubscribe: { coreid: @wsubscribe.coreid, empresa_app_url: @wsubscribe.empresa_app_url, empresa_nombre: @wsubscribe.empresa_nombre, id_empresa: @wsubscribe.id_empresa } }
    end

    assert_redirected_to wsubscribe_url(Wsubscribe.last)
  end

  test "should show wsubscribe" do
    get wsubscribe_url(@wsubscribe)
    assert_response :success
  end

  test "should get edit" do
    get edit_wsubscribe_url(@wsubscribe)
    assert_response :success
  end

  test "should update wsubscribe" do
    patch wsubscribe_url(@wsubscribe), params: { wsubscribe: { coreid: @wsubscribe.coreid, empresa_app_url: @wsubscribe.empresa_app_url, empresa_nombre: @wsubscribe.empresa_nombre, id_empresa: @wsubscribe.id_empresa } }
    assert_redirected_to wsubscribe_url(@wsubscribe)
  end

  test "should destroy wsubscribe" do
    assert_difference('Wsubscribe.count', -1) do
      delete wsubscribe_url(@wsubscribe)
    end

    assert_redirected_to wsubscribes_url
  end
end
