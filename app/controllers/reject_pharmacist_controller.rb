class RejectPharmacistController < ApplicationController
  before_action :set_pharmacy_license, only: [:reject]
  
  def reject
  	@pharmacy_license.approved = 2
    @pharmacy_license.save
    redirect_to '/'
  end
  private
  def set_pharmacy_license
    @pharmacy_license = PharmacyLicense.find(params[:id])
  end
end
