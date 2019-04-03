class AddApprovedToManufacturerLicense < ActiveRecord::Migration[5.2]
  def change
    add_column :manufacturer_licenses, :approved, :integer
  end
end
