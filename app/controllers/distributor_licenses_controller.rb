class DistributorLicensesController < ApplicationController
  before_action :set_distributor_license, only: [:show, :edit, :update, :destroy]

  # GET /distributor_licenses
  # GET /distributor_licenses.json
  def index
    if current_user.user_type == 0
      @distributor_licenses = DistributorLicense.where(:approved => 2)
    elsif current_user.user_type == 2
      @distributor_licenses = DistributorLicense.where(:user_id => current_user.id)
    else
      redirect_to '/'
    end
  end

  # GET /distributor_licenses/1
  # GET /distributor_licenses/1.json
  def show
  end

  # GET /distributor_licenses/new
  def new
    @distributor_license = DistributorLicense.new
  end

  # GET /distributor_licenses/1/edit
  def edit
  end

  # POST /distributor_licenses
  # POST /distributor_licenses.json
  def create
    @distributor_license = DistributorLicense.new(distributor_license_params)
    @distributor_license.user_id = current_user.id
    @distributor_license.approved = 0
    respond_to do |format|
      if @distributor_license.save
        format.html { redirect_to @distributor_license, notice: 'Distributor license was successfully created.' }
        format.json { render :show, status: :created, location: @distributor_license }
      else
        format.html { render :new }
        format.json { render json: @distributor_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distributor_licenses/1
  # PATCH/PUT /distributor_licenses/1.json
  def update
    respond_to do |format|
      if @distributor_license.update(distributor_license_params)
        format.html { redirect_to @distributor_license, notice: 'Distributor license was successfully updated.' }
        format.json { render :show, status: :ok, location: @distributor_license }
      else
        format.html { render :edit }
        format.json { render json: @distributor_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distributor_licenses/1
  # DELETE /distributor_licenses/1.json
  def destroy
    @distributor_license.destroy
    respond_to do |format|
      format.html { redirect_to distributor_licenses_url, notice: 'Distributor license was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distributor_license
      @distributor_license = DistributorLicense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distributor_license_params
      params.require(:distributor_license).permit(:applicant_name, :applicant_contact, :applicant_address, :receipt_number, :ein, :signature)
    end
end
