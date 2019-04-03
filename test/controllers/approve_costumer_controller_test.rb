require 'test_helper'

class ApproveCostumerControllerTest < ActionDispatch::IntegrationTest
  test "should get approve" do
    get approve_costumer_approve_url
    assert_response :success
  end

  test "should get addLicense" do
    get approve_costumer_addLicense_url
    assert_response :success
  end

end
