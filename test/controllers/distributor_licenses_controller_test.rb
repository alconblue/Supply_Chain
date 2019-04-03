require 'test_helper'

class DistributorLicensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distributor_license = distributor_licenses(:one)
  end

  test "should get index" do
    get distributor_licenses_url
    assert_response :success
  end

  test "should get new" do
    get new_distributor_license_url
    assert_response :success
  end

  test "should create distributor_license" do
    assert_difference('DistributorLicense.count') do
      post distributor_licenses_url, params: { distributor_license: { applicant_address: @distributor_license.applicant_address, applicant_contact: @distributor_license.applicant_contact, applicant_name: @distributor_license.applicant_name, ein: @distributor_license.ein, receipt_number: @distributor_license.receipt_number, signature: @distributor_license.signature } }
    end

    assert_redirected_to distributor_license_url(DistributorLicense.last)
  end

  test "should show distributor_license" do
    get distributor_license_url(@distributor_license)
    assert_response :success
  end

  test "should get edit" do
    get edit_distributor_license_url(@distributor_license)
    assert_response :success
  end

  test "should update distributor_license" do
    patch distributor_license_url(@distributor_license), params: { distributor_license: { applicant_address: @distributor_license.applicant_address, applicant_contact: @distributor_license.applicant_contact, applicant_name: @distributor_license.applicant_name, ein: @distributor_license.ein, receipt_number: @distributor_license.receipt_number, signature: @distributor_license.signature } }
    assert_redirected_to distributor_license_url(@distributor_license)
  end

  test "should destroy distributor_license" do
    assert_difference('DistributorLicense.count', -1) do
      delete distributor_license_url(@distributor_license)
    end

    assert_redirected_to distributor_licenses_url
  end
end
