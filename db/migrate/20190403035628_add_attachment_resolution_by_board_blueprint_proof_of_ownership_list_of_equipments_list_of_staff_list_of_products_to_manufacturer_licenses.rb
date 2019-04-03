class AddAttachmentResolutionByBoardBlueprintProofOfOwnershipListOfEquipmentsListOfStaffListOfProductsToManufacturerLicenses < ActiveRecord::Migration[5.2]
  def self.up
    change_table :manufacturer_licenses do |t|
      t.attachment :resolution_by_board
      t.attachment :blueprint
      t.attachment :proof_of_ownership
      t.attachment :list_of_equipments
      t.attachment :list_of_staff
      t.attachment :list_of_products
    end
  end

  def self.down
    remove_attachment :manufacturer_licenses, :resolution_by_board
    remove_attachment :manufacturer_licenses, :blueprint
    remove_attachment :manufacturer_licenses, :proof_of_ownership
    remove_attachment :manufacturer_licenses, :list_of_equipments
    remove_attachment :manufacturer_licenses, :list_of_staff
    remove_attachment :manufacturer_licenses, :list_of_products
  end
end
