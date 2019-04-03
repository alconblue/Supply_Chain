require "application_system_test_case"

class DistributorLicensesTest < ApplicationSystemTestCase
  setup do
    @distributor_license = distributor_licenses(:one)
  end

  test "visiting the index" do
    visit distributor_licenses_url
    assert_selector "h1", text: "Distributor Licenses"
  end

  test "creating a Distributor license" do
    visit distributor_licenses_url
    click_on "New Distributor License"

    fill_in "Applicant address", with: @distributor_license.applicant_address
    fill_in "Applicant contact", with: @distributor_license.applicant_contact
    fill_in "Applicant name", with: @distributor_license.applicant_name
    fill_in "Ein", with: @distributor_license.ein
    fill_in "Receipt number", with: @distributor_license.receipt_number
    fill_in "Signature", with: @distributor_license.signature
    click_on "Create Distributor license"

    assert_text "Distributor license was successfully created"
    click_on "Back"
  end

  test "updating a Distributor license" do
    visit distributor_licenses_url
    click_on "Edit", match: :first

    fill_in "Applicant address", with: @distributor_license.applicant_address
    fill_in "Applicant contact", with: @distributor_license.applicant_contact
    fill_in "Applicant name", with: @distributor_license.applicant_name
    fill_in "Ein", with: @distributor_license.ein
    fill_in "Receipt number", with: @distributor_license.receipt_number
    fill_in "Signature", with: @distributor_license.signature
    click_on "Update Distributor license"

    assert_text "Distributor license was successfully updated"
    click_on "Back"
  end

  test "destroying a Distributor license" do
    visit distributor_licenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Distributor license was successfully destroyed"
  end
end
