require 'test_helper'

class GettraderControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get gettrader_new_url
    assert_response :success
  end

end
