class AddAttachmentBlueprintProofOfOwnershipPharmacistAffidavitAffidavitOfNonconvictionToPharmacyLicenses < ActiveRecord::Migration[5.2]
  def self.up
    change_table :pharmacy_licenses do |t|
      t.attachment :blueprint
      t.attachment :proof_of_ownership
      t.attachment :pharmacist_affidavit
      t.attachment :affidavit_of_nonconviction
    end
  end

  def self.down
    remove_attachment :pharmacy_licenses, :blueprint
    remove_attachment :pharmacy_licenses, :proof_of_ownership
    remove_attachment :pharmacy_licenses, :pharmacist_affidavit
    remove_attachment :pharmacy_licenses, :affidavit_of_nonconviction
  end
end
