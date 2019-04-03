require "application_system_test_case"

class ManufacturerLicensesTest < ApplicationSystemTestCase
  setup do
    @manufacturer_license = manufacturer_licenses(:one)
  end

  test "visiting the index" do
    visit manufacturer_licenses_url
    assert_selector "h1", text: "Manufacturer Licenses"
  end

  test "creating a Manufacturer license" do
    visit manufacturer_licenses_url
    click_on "New Manufacturer License"

    fill_in "Applicant address", with: @manufacturer_license.applicant_address
    fill_in "Applicant contact", with: @manufacturer_license.applicant_contact
    fill_in "Applicant name", with: @manufacturer_license.applicant_name
    fill_in "Ein", with: @manufacturer_license.ein
    fill_in "Receipt number", with: @manufacturer_license.receipt_number
    fill_in "Signature", with: @manufacturer_license.signature
    click_on "Create Manufacturer license"

    assert_text "Manufacturer license was successfully created"
    click_on "Back"
  end

  test "updating a Manufacturer license" do
    visit manufacturer_licenses_url
    click_on "Edit", match: :first

    fill_in "Applicant address", with: @manufacturer_license.applicant_address
    fill_in "Applicant contact", with: @manufacturer_license.applicant_contact
    fill_in "Applicant name", with: @manufacturer_license.applicant_name
    fill_in "Ein", with: @manufacturer_license.ein
    fill_in "Receipt number", with: @manufacturer_license.receipt_number
    fill_in "Signature", with: @manufacturer_license.signature
    click_on "Update Manufacturer license"

    assert_text "Manufacturer license was successfully updated"
    click_on "Back"
  end

  test "destroying a Manufacturer license" do
    visit manufacturer_licenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manufacturer license was successfully destroyed"
  end
end
