require 'test_helper'

class Basics2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get basics2_index_url
    assert_response :success
  end

end
