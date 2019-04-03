class AddAttachmentResolutionByBoardBlueprintProofOfOwnershipPharmacistAffidavitDegreeCertificateInvoiceForRefrigeratorInvoiceForAcToDistributorLicenses < ActiveRecord::Migration[5.2]
  def self.up
    change_table :distributor_licenses do |t|
      t.attachment :resolution_by_board
      t.attachment :blueprint
      t.attachment :proof_of_ownership
      t.attachment :pharmacist_affidavit
      t.attachment :degree_certificate
      t.attachment :invoice_for_refrigerator
      t.attachment :invoice_for_ac
    end
  end

  def self.down
    remove_attachment :distributor_licenses, :resolution_by_board
    remove_attachment :distributor_licenses, :blueprint
    remove_attachment :distributor_licenses, :proof_of_ownership
    remove_attachment :distributor_licenses, :pharmacist_affidavit
    remove_attachment :distributor_licenses, :degree_certificate
    remove_attachment :distributor_licenses, :invoice_for_refrigerator
    remove_attachment :distributor_licenses, :invoice_for_ac
  end
end
