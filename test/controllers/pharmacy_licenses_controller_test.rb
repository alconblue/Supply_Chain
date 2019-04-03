require 'test_helper'

class PharmacyLicensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pharmacy_license = pharmacy_licenses(:one)
  end

  test "should get index" do
    get pharmacy_licenses_url
    assert_response :success
  end

  test "should get new" do
    get new_pharmacy_license_url
    assert_response :success
  end

  test "should create pharmacy_license" do
    assert_difference('PharmacyLicense.count') do
      post pharmacy_licenses_url, params: { pharmacy_license: { applicant_address: @pharmacy_license.applicant_address, applicant_contact: @pharmacy_license.applicant_contact, applicant_name: @pharmacy_license.applicant_name, ein: @pharmacy_license.ein, receipt_number: @pharmacy_license.receipt_number, signature: @pharmacy_license.signature } }
    end

    assert_redirected_to pharmacy_license_url(PharmacyLicense.last)
  end

  test "should show pharmacy_license" do
    get pharmacy_license_url(@pharmacy_license)
    assert_response :success
  end

  test "should get edit" do
    get edit_pharmacy_license_url(@pharmacy_license)
    assert_response :success
  end

  test "should update pharmacy_license" do
    patch pharmacy_license_url(@pharmacy_license), params: { pharmacy_license: { applicant_address: @pharmacy_license.applicant_address, applicant_contact: @pharmacy_license.applicant_contact, applicant_name: @pharmacy_license.applicant_name, ein: @pharmacy_license.ein, receipt_number: @pharmacy_license.receipt_number, signature: @pharmacy_license.signature } }
    assert_redirected_to pharmacy_license_url(@pharmacy_license)
  end

  test "should destroy pharmacy_license" do
    assert_difference('PharmacyLicense.count', -1) do
      delete pharmacy_license_url(@pharmacy_license)
    end

    assert_redirected_to pharmacy_licenses_url
  end
end
