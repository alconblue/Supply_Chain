class AddUserIdToDistributorLicenses < ActiveRecord::Migration[5.2]
  def change
    add_column :distributor_licenses, :user_id, :integer
  end
end
