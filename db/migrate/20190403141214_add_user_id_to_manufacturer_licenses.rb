class AddUserIdToManufacturerLicenses < ActiveRecord::Migration[5.2]
  def change
    add_column :manufacturer_licenses, :user_id, :integer
  end
end
