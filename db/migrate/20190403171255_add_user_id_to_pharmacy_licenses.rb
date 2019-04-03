class AddUserIdToPharmacyLicenses < ActiveRecord::Migration[5.2]
  def change
    add_column :pharmacy_licenses, :user_id, :integer
  end
end
