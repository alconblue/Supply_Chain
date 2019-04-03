require "application_system_test_case"

class CustomerLicensesTest < ApplicationSystemTestCase
  setup do
    @customer_license = customer_licenses(:one)
  end

  test "visiting the index" do
    visit customer_licenses_url
    assert_selector "h1", text: "Customer Licenses"
  end

  test "creating a Customer license" do
    visit customer_licenses_url
    click_on "New Customer License"

    fill_in "Applicant address", with: @customer_license.applicant_address
    fill_in "Applicant contact", with: @customer_license.applicant_contact
    fill_in "Applicant name", with: @customer_license.applicant_name
    fill_in "Id no", with: @customer_license.id_no
    fill_in "Id type", with: @customer_license.id_type
    fill_in "Signature", with: @customer_license.signature
    click_on "Create Customer license"

    assert_text "Customer license was successfully created"
    click_on "Back"
  end

  test "updating a Customer license" do
    visit customer_licenses_url
    click_on "Edit", match: :first

    fill_in "Applicant address", with: @customer_license.applicant_address
    fill_in "Applicant contact", with: @customer_license.applicant_contact
    fill_in "Applicant name", with: @customer_license.applicant_name
    fill_in "Id no", with: @customer_license.id_no
    fill_in "Id type", with: @customer_license.id_type
    fill_in "Signature", with: @customer_license.signature
    click_on "Update Customer license"

    assert_text "Customer license was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer license" do
    visit customer_licenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer license was successfully destroyed"
  end
end
