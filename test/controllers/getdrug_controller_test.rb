require 'test_helper'

class GetdrugControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get getdrug_new_url
    assert_response :success
  end

end
