require 'test_helper'

class RejectDistributorControllerTest < ActionDispatch::IntegrationTest
  test "should get reject" do
    get reject_distributor_reject_url
    assert_response :success
  end

end
