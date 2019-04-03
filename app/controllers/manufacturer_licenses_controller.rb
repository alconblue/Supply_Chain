class ManufacturerLicensesController < ApplicationController
  before_action :set_manufacturer_license, only: [:show, :edit, :update, :destroy]

  # GET /manufacturer_licenses
  # GET /manufacturer_licenses.json
  def index
    @manufacturer_licenses = ManufacturerLicense.all
  end

  # GET /manufacturer_licenses/1
  # GET /manufacturer_licenses/1.json
  def show
  end

  # GET /manufacturer_licenses/new
  def new
    @manufacturer_license = ManufacturerLicense.new
  end

  # GET /manufacturer_licenses/1/edit
  def edit
  end

  # POST /manufacturer_licenses
  # POST /manufacturer_licenses.json
  def create
    @manufacturer_license = ManufacturerLicense.new(manufacturer_license_params)

    respond_to do |format|
      if @manufacturer_license.save
        format.html { redirect_to @manufacturer_license, notice: 'Manufacturer license was successfully created.' }
        format.json { render :show, status: :created, location: @manufacturer_license }
      else
        format.html { render :new }
        format.json { render json: @manufacturer_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manufacturer_licenses/1
  # PATCH/PUT /manufacturer_licenses/1.json
  def update
    respond_to do |format|
      if @manufacturer_license.update(manufacturer_license_params)
        format.html { redirect_to @manufacturer_license, notice: 'Manufacturer license was successfully updated.' }
        format.json { render :show, status: :ok, location: @manufacturer_license }
      else
        format.html { render :edit }
        format.json { render json: @manufacturer_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manufacturer_licenses/1
  # DELETE /manufacturer_licenses/1.json
  def destroy
    @manufacturer_license.destroy
    respond_to do |format|
      format.html { redirect_to manufacturer_licenses_url, notice: 'Manufacturer license was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manufacturer_license
      @manufacturer_license = ManufacturerLicense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manufacturer_license_params
      params.require(:manufacturer_license).permit(:applicant_name, :applicant_contact, :applicant_address, :receipt_number, :ein, :signature)
    end
end
