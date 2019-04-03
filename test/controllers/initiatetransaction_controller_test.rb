require 'test_helper'

class InitiatetransactionControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get initiatetransaction_create_url
    assert_response :success
  end

  test "should get new" do
    get initiatetransaction_new_url
    assert_response :success
  end

  test "should get destroy" do
    get initiatetransaction_destroy_url
    assert_response :success
  end

end
