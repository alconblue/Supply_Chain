require 'test_helper'

class ApproveControllerTest < ActionDispatch::IntegrationTest
  test "should get approve" do
    get approve_approve_url
    assert_response :success
  end

end
