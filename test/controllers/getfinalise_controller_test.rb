require 'test_helper'

class GetfinaliseControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get getfinalise_new_url
    assert_response :success
  end

end
