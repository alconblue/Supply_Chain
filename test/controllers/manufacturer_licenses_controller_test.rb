require 'test_helper'

class ManufacturerLicensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manufacturer_license = manufacturer_licenses(:one)
  end

  test "should get index" do
    get manufacturer_licenses_url
    assert_response :success
  end

  test "should get new" do
    get new_manufacturer_license_url
    assert_response :success
  end

  test "should create manufacturer_license" do
    assert_difference('ManufacturerLicense.count') do
      post manufacturer_licenses_url, params: { manufacturer_license: { applicant_address: @manufacturer_license.applicant_address, applicant_contact: @manufacturer_license.applicant_contact, applicant_name: @manufacturer_license.applicant_name, ein: @manufacturer_license.ein, receipt_number: @manufacturer_license.receipt_number, signature: @manufacturer_license.signature } }
    end

    assert_redirected_to manufacturer_license_url(ManufacturerLicense.last)
  end

  test "should show manufacturer_license" do
    get manufacturer_license_url(@manufacturer_license)
    assert_response :success
  end

  test "should get edit" do
    get edit_manufacturer_license_url(@manufacturer_license)
    assert_response :success
  end

  test "should update manufacturer_license" do
    patch manufacturer_license_url(@manufacturer_license), params: { manufacturer_license: { applicant_address: @manufacturer_license.applicant_address, applicant_contact: @manufacturer_license.applicant_contact, applicant_name: @manufacturer_license.applicant_name, ein: @manufacturer_license.ein, receipt_number: @manufacturer_license.receipt_number, signature: @manufacturer_license.signature } }
    assert_redirected_to manufacturer_license_url(@manufacturer_license)
  end

  test "should destroy manufacturer_license" do
    assert_difference('ManufacturerLicense.count', -1) do
      delete manufacturer_license_url(@manufacturer_license)
    end

    assert_redirected_to manufacturer_licenses_url
  end
end
