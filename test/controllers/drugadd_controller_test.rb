require 'test_helper'

class DrugaddControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get drugadd_create_url
    assert_response :success
  end

  test "should get new" do
    get drugadd_new_url
    assert_response :success
  end

  test "should get destroy" do
    get drugadd_destroy_url
    assert_response :success
  end

end
