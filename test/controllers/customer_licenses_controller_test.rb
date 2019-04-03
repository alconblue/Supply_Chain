require 'test_helper'

class CustomerLicensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_license = customer_licenses(:one)
  end

  test "should get index" do
    get customer_licenses_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_license_url
    assert_response :success
  end

  test "should create customer_license" do
    assert_difference('CustomerLicense.count') do
      post customer_licenses_url, params: { customer_license: { applicant_address: @customer_license.applicant_address, applicant_contact: @customer_license.applicant_contact, applicant_name: @customer_license.applicant_name, id_no: @customer_license.id_no, id_type: @customer_license.id_type, signature: @customer_license.signature } }
    end

    assert_redirected_to customer_license_url(CustomerLicense.last)
  end

  test "should show customer_license" do
    get customer_license_url(@customer_license)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_license_url(@customer_license)
    assert_response :success
  end

  test "should update customer_license" do
    patch customer_license_url(@customer_license), params: { customer_license: { applicant_address: @customer_license.applicant_address, applicant_contact: @customer_license.applicant_contact, applicant_name: @customer_license.applicant_name, id_no: @customer_license.id_no, id_type: @customer_license.id_type, signature: @customer_license.signature } }
    assert_redirected_to customer_license_url(@customer_license)
  end

  test "should destroy customer_license" do
    assert_difference('CustomerLicense.count', -1) do
      delete customer_license_url(@customer_license)
    end

    assert_redirected_to customer_licenses_url
  end
end
