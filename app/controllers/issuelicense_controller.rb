class IssuelicenseController < ApplicationController
  def create
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
  	s += params[:user]
  	s += "\"\n}'"
  	system(s)
  	@s1 = s
  end

  def new
  end

  def destroy
  end

private
  def issuelicense_params
      params.permit(:licenseno, :type, :products_allowed, :expiry_date, :user)
  end
end