require 'test_helper'

class WalletaddControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get walletadd_create_url
    assert_response :success
  end

  test "should get new" do
    get walletadd_new_url
    assert_response :success
  end

  test "should get destroy" do
    get walletadd_destroy_url
    assert_response :success
  end

end
