class AddApprovedToDistributorLicense < ActiveRecord::Migration[5.2]
  def change
    add_column :distributor_licenses, :approved, :integer
  end
end
