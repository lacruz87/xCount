require 'test_helper'

class ParticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @particle = particles(:one)
  end

  test "should get index" do
    get particles_url
    assert_response :success
  end

  test "should get new" do
    get new_particle_url
    assert_response :success
  end

  test "should create particle" do
    assert_difference('Particle.count') do
      post particles_url, params: { particle: { coreid: @particle.coreid, data: @particle.data, event: @particle.event, name: @particle.name, published_at: @particle.published_at } }
    end

    assert_redirected_to particle_url(Particle.last)
  end

  test "should show particle" do
    get particle_url(@particle)
    assert_response :success
  end

  test "should get edit" do
    get edit_particle_url(@particle)
    assert_response :success
  end

  test "should update particle" do
    patch particle_url(@particle), params: { particle: { coreid: @particle.coreid, data: @particle.data, event: @particle.event, name: @particle.name, published_at: @particle.published_at } }
    assert_redirected_to particle_url(@particle)
  end

  test "should destroy particle" do
    assert_difference('Particle.count', -1) do
      delete particle_url(@particle)
    end

    assert_redirected_to particles_url
  end
end
