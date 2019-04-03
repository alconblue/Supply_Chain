require 'test_helper'

class RejectControllerTest < ActionDispatch::IntegrationTest
  test "should get reject" do
    get reject_reject_url
    assert_response :success
  end

end
