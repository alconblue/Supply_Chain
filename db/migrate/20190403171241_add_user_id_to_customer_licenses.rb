class AddUserIdToCustomerLicenses < ActiveRecord::Migration[5.2]
  def change
    add_column :customer_licenses, :user_id, :integer
  end
end
