require 'test_helper'

class RejectCustomerControllerTest < ActionDispatch::IntegrationTest
  test "should get reject" do
    get reject_customer_reject_url
    assert_response :success
  end

end
