class CreatePharmacyLicenses < ActiveRecord::Migration[5.2]
  def change
    create_table :pharmacy_licenses do |t|
      t.string :applicant_name
      t.string :applicant_contact
      t.text :applicant_address
      t.string :receipt_number
      t.string :ein
      t.text :signature

      t.timestamps
    end
  end
end
