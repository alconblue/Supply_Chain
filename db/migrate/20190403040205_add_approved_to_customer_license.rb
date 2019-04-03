class AddApprovedToCustomerLicense < ActiveRecord::Migration[5.2]
  def change
    add_column :customer_licenses, :approved, :integer
  end
end
