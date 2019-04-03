class CustomerLicensesController < ApplicationController
  before_action :set_customer_license, only: [:show, :edit, :update, :destroy]

  # GET /customer_licenses
  # GET /customer_licenses.json
  def index
    if current_user.user_type==0
      @manufacturer_licenses = ManufacturerLicense.where(:approved => 0)
    elsif current_user.user_type == 1
      @manufacturer_licenses = ManufacturerLicense.where(:user_id => current_user.id)
    else
      redirect_to "/"
    end
  end

  # GET /customer_licenses/1
  # GET /customer_licenses/1.json
  def show
  end

  # GET /customer_licenses/new
  def new
    @customer_license = CustomerLicense.new
  end

  # GET /customer_licenses/1/edit
  def edit
  end

  # POST /customer_licenses
  # POST /customer_licenses.json
  def create
    @customer_license = CustomerLicense.new(customer_license_params)

    respond_to do |format|
      if @customer_license.save
        format.html { redirect_to @customer_license, notice: 'Customer license was successfully created.' }
        format.json { render :show, status: :created, location: @customer_license }
      else
        format.html { render :new }
        format.json { render json: @customer_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_licenses/1
  # PATCH/PUT /customer_licenses/1.json
  def update
    respond_to do |format|
      if @customer_license.update(customer_license_params)
        format.html { redirect_to @customer_license, notice: 'Customer license was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_license }
      else
        format.html { render :edit }
        format.json { render json: @customer_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_licenses/1
  # DELETE /customer_licenses/1.json
  def destroy
    @customer_license.destroy
    respond_to do |format|
      format.html { redirect_to customer_licenses_url, notice: 'Customer license was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_license
      @customer_license = CustomerLicense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_license_params
      params.require(:customer_license).permit(:applicant_name, :applicant_contact, :applicant_address, :id_type, :id_no, :signature)
    end
end
