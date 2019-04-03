class CreateCustomerLicenses < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_licenses do |t|
      t.string :applicant_name
      t.string :applicant_contact
      t.text :applicant_address
      t.integer :id_type
      t.string :id_no
      t.text :signature

      t.timestamps
    end
  end
end
