require 'test_helper'

class FinalisetransactionControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get finalisetransaction_create_url
    assert_response :success
  end

  test "should get new" do
    get finalisetransaction_new_url
    assert_response :success
  end

  test "should get destroy" do
    get finalisetransaction_destroy_url
    assert_response :success
  end

end
