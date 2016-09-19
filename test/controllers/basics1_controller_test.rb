require 'test_helper'

class Basics1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get basics1_index_url
    assert_response :success
  end

end
