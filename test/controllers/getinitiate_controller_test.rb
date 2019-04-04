require 'test_helper'

class GetinitiateControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get getinitiate_new_url
    assert_response :success
  end

end
