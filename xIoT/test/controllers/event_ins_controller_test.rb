require 'test_helper'

class EventInsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_in = event_ins(:one)
  end

  test "should get index" do
    get event_ins_url
    assert_response :success
  end

  test "should get new" do
    get new_event_in_url
    assert_response :success
  end

  test "should create event_in" do
    assert_difference('EventIn.count') do
      post event_ins_url, params: { event_in: { almacen: @event_in.almacen, centro: @event_in.centro, coreid: @event_in.coreid, published_at_dt: @event_in.published_at_dt, tipo: @event_in.tipo, ubicacion: @event_in.ubicacion, valor: @event_in.valor } }
    end

    assert_redirected_to event_in_url(EventIn.last)
  end

  test "should show event_in" do
    get event_in_url(@event_in)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_in_url(@event_in)
    assert_response :success
  end

  test "should update event_in" do
    patch event_in_url(@event_in), params: { event_in: { almacen: @event_in.almacen, centro: @event_in.centro, coreid: @event_in.coreid, published_at_dt: @event_in.published_at_dt, tipo: @event_in.tipo, ubicacion: @event_in.ubicacion, valor: @event_in.valor } }
    assert_redirected_to event_in_url(@event_in)
  end

  test "should destroy event_in" do
    assert_difference('EventIn.count', -1) do
      delete event_in_url(@event_in)
    end

    assert_redirected_to event_ins_url
  end
end
