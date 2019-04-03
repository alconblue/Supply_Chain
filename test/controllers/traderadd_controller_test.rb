require 'test_helper'

class TraderaddControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get traderadd_create_url
    assert_response :success
  end

  test "should get new" do
    get traderadd_new_url
    assert_response :success
  end

  test "should get destroy" do
    get traderadd_destroy_url
    assert_response :success
  end

end
