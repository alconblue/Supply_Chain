require "application_system_test_case"

class PharmacyLicensesTest < ApplicationSystemTestCase
  setup do
    @pharmacy_license = pharmacy_licenses(:one)
  end

  test "visiting the index" do
    visit pharmacy_licenses_url
    assert_selector "h1", text: "Pharmacy Licenses"
  end

  test "creating a Pharmacy license" do
    visit pharmacy_licenses_url
    click_on "New Pharmacy License"

    fill_in "Applicant address", with: @pharmacy_license.applicant_address
    fill_in "Applicant contact", with: @pharmacy_license.applicant_contact
    fill_in "Applicant name", with: @pharmacy_license.applicant_name
    fill_in "Ein", with: @pharmacy_license.ein
    fill_in "Receipt number", with: @pharmacy_license.receipt_number
    fill_in "Signature", with: @pharmacy_license.signature
    click_on "Create Pharmacy license"

    assert_text "Pharmacy license was successfully created"
    click_on "Back"
  end

  test "updating a Pharmacy license" do
    visit pharmacy_licenses_url
    click_on "Edit", match: :first

    fill_in "Applicant address", with: @pharmacy_license.applicant_address
    fill_in "Applicant contact", with: @pharmacy_license.applicant_contact
    fill_in "Applicant name", with: @pharmacy_license.applicant_name
    fill_in "Ein", with: @pharmacy_license.ein
    fill_in "Receipt number", with: @pharmacy_license.receipt_number
    fill_in "Signature", with: @pharmacy_license.signature
    click_on "Update Pharmacy license"

    assert_text "Pharmacy license was successfully updated"
    click_on "Back"
  end

  test "destroying a Pharmacy license" do
    visit pharmacy_licenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pharmacy license was successfully destroyed"
  end
end
