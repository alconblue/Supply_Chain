require 'test_helper'

class ApproveDistributorControllerTest < ActionDispatch::IntegrationTest
  test "should get approve" do
    get approve_distributor_approve_url
    assert_response :success
  end

  test "should get addLicense" do
    get approve_distributor_addLicense_url
    assert_response :success
  end

end
