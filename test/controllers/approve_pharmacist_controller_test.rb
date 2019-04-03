require 'test_helper'

class ApprovePharmacistControllerTest < ActionDispatch::IntegrationTest
  test "should get approve" do
    get approve_pharmacist_approve_url
    assert_response :success
  end

  test "should get addLicense" do
    get approve_pharmacist_addLicense_url
    assert_response :success
  end

end
