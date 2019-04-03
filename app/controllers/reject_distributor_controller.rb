class RejectDistributorController < ApplicationController
  before_action :set_distributor_license, only: [:reject]
  
  def reject
  	@distributor_license.approved = 2
    @distributor_license.save
    redirect_to '/'
  end
  private
  def set_distributor_license
    @distributor_license = DistributorLicense.find(params[:id])
  end
end
