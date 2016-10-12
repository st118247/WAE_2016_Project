require 'test_helper'

class AdministrationControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  test "should get userlist" do
    get administration_userlist_url
    assert_response :success
  end

end
