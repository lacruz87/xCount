require 'test_helper'

class WInsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @w_in = w_ins(:one)
  end

  test "should get index" do
    get w_ins_url
    assert_response :success
  end

  test "should get new" do
    get new_w_in_url
    assert_response :success
  end

  test "should create w_in" do
    assert_difference('WIn.count') do
      post w_ins_url, params: { w_in: { coreid: @w_in.coreid, data: @w_in.data, event: @w_in.event, name: @w_in.name, published_at: @w_in.published_at } }
    end

    assert_redirected_to w_in_url(WIn.last)
  end

  test "should show w_in" do
    get w_in_url(@w_in)
    assert_response :success
  end

  test "should get edit" do
    get edit_w_in_url(@w_in)
    assert_response :success
  end

  test "should update w_in" do
    patch w_in_url(@w_in), params: { w_in: { coreid: @w_in.coreid, data: @w_in.data, event: @w_in.event, name: @w_in.name, published_at: @w_in.published_at } }
    assert_redirected_to w_in_url(@w_in)
  end

  test "should destroy w_in" do
    assert_difference('WIn.count', -1) do
      delete w_in_url(@w_in)
    end

    assert_redirected_to w_ins_url
  end
end
