class ApproveDistributorController < ApplicationController
  before_action :set_distributor_license, only: [:approve]
  def approve
    if current_user.user_type == 0
    	@distributor_license.approved = 1
      @distributor_license.save
      session[:user_id] = @distributor_license.user_id
    else
      redirect_to '/'
    end
  end

  def addLicense
    if current_user.user_type == 0
    	s = "curl 'http://10.52.38.162:3000/api/org.nitk.drugtraceability.Trader?access_token="
    	s += current_user.token
    	s += "' -H 'Accept: application/json' --compressed -H 'Content-Type: application/json' --data '{\n  \"$class\": \"org.nitk.drugtraceability.Trader\",\n  \"tradeId\": \""
    	s += session[:user_id].to_s
    	s += "\",\n  \"firstName\": \""
    	s += params[:firstName]
    	s += "\",\n  \"lastName\": \""
    	s += params[:lastName]
    	s += "\",\n  \"access\": \""
    	s += params[:access]
    	s += "\"\n}'"
      system(s)
      s = "curl 'http://10.52.38.162:3000/api/org.nitk.drugtraceability.IssueLicense?access_token="
    	s += current_user.token
    	s += "' -H 'Accept: application/json' --compressed -H 'Content-Type: application/json' --data '{\n  \"$class\": \"org.nitk.drugtraceability.IssueLicense\",\n  \"licenseno\": \""
    	s += params[:licenseno]
    	s += "\",\n  \"type\": \""
      s += params[:type]
      s += "\",\n  \"products_allowed\": "
    	s += params[:products_allowed]
    	s += ",\n  \"expiry_date\": \""
    	s += params[:expiry_date]
    	s += "\",\n  \"applicant\": \"org.nitk.drugtraceability.Trader#"
    	s += session[:user_id].to_s
    	s += "\"\n}'"
      system(s)
      # s = 'composer identity issue -u '+params[:firstName]+session[:user_id].to_s+' -c admin@drugtraceability-network  -a "resource:org.nitk.drugtraceability.Trader#'+session[:user_id].to_s+'"'
      # system(s)
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  private
  def set_distributor_license
    @distributor_license = DistributorLicense.find(params[:id])
  end
  def approve_params
      params.permit(:licenseno, :type, :products_allowed, :expiry_date, :user, :tradeId, :firstName, :lastName, :access)
  end
end
