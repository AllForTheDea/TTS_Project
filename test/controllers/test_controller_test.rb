require 'test_helper'

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get test_view" do
    get test_test_view_url
    assert_response :success
  end

end
