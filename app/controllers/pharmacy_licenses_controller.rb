class PharmacyLicensesController < ApplicationController
  before_action :set_pharmacy_license, only: [:show, :edit, :update, :destroy]

  # GET /pharmacy_licenses
  # GET /pharmacy_licenses.json
  def index
    if current_user.user_type == 0
      @pharmacy_licenses = PharmacyLicense.where(:approved => 2)
    elsif current_user.user_type == 3
      @pharmacy_licenses = PharmacyLicense.where(:user_id => current_user.id)
    else
      redirect_to '/'
    end
  end

  # GET /pharmacy_licenses/1
  # GET /pharmacy_licenses/1.json
  def show
  end

  # GET /pharmacy_licenses/new
  def new
    @pharmacy_license = PharmacyLicense.new
  end

  # GET /pharmacy_licenses/1/edit
  def edit
  end

  # POST /pharmacy_licenses
  # POST /pharmacy_licenses.json
  def create
    @pharmacy_license = PharmacyLicense.new(pharmacy_license_params)
    @pharmacy_license.user_id = current_user.id
    @pharmacy_license.approved = 0
    respond_to do |format|
      if @pharmacy_license.save
        format.html { redirect_to @pharmacy_license, notice: 'Pharmacy license was successfully created.' }
        format.json { render :show, status: :created, location: @pharmacy_license }
      else
        format.html { render :new }
        format.json { render json: @pharmacy_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pharmacy_licenses/1
  # PATCH/PUT /pharmacy_licenses/1.json
  def update
    respond_to do |format|
      if @pharmacy_license.update(pharmacy_license_params)
        format.html { redirect_to @pharmacy_license, notice: 'Pharmacy license was successfully updated.' }
        format.json { render :show, status: :ok, location: @pharmacy_license }
      else
        format.html { render :edit }
        format.json { render json: @pharmacy_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pharmacy_licenses/1
  # DELETE /pharmacy_licenses/1.json
  def destroy
    @pharmacy_license.destroy
    respond_to do |format|
      format.html { redirect_to pharmacy_licenses_url, notice: 'Pharmacy license was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharmacy_license
      @pharmacy_license = PharmacyLicense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pharmacy_license_params
      params.require(:pharmacy_license).permit(:applicant_name, :applicant_contact, :applicant_address, :receipt_number, :ein, :signature)
    end
end
