require 'test_helper'

class AdministrationControllerTest < ActionDispatch::IntegrationTest
  test "should get userlist" do
    get administration_userlist_url
    assert_response :success
  end

end
