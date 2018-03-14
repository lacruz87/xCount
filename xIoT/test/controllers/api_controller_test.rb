require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get particle_in" do
    get api_particle_in_url
    assert_response :success
  end

end
