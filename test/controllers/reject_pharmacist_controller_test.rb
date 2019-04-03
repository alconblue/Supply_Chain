require 'test_helper'

class RejectPharmacistControllerTest < ActionDispatch::IntegrationTest
  test "should get reject" do
    get reject_pharmacist_reject_url
    assert_response :success
  end

end
