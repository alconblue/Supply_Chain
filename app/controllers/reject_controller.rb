class RejectController < ApplicationController
  before_action :set_manufacturer_license, only: [:reject]
  def reject
    @manufacturer_license.approved = 2
    @manufacturer_license.save
    redirect_to '/manufacturer_licenses'
  end
  private
  def set_manufacturer_license
    @manufacturer_license = ManufacturerLicense.find(params[:id])
  end
end
