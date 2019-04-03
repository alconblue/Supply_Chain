require 'test_helper'

class IssuelicenseControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get issuelicense_create_url
    assert_response :success
  end

  test "should get new" do
    get issuelicense_new_url
    assert_response :success
  end

  test "should get destroy" do
    get issuelicense_destroy_url
    assert_response :success
  end

end
