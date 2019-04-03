class AddApprovedToPharmacyLicense < ActiveRecord::Migration[5.2]
  def change
    add_column :pharmacy_licenses, :approved, :integer
  end
end
