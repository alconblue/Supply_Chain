class DrugaddController < ApplicationController
  
  def new
  end
  
  def create
  	s = "curl 'http://10.52.38.162:3000/api/org.nitk.drugtraceability.AddDrug?access_token="
  	s += current_user.token
  	s += "' -H 'Accept: application/json' --compressed -H 'Content-Type: application/json' --data '{\n  \"$class\": \"org.nitk.drugtraceability.AddDrug\",\n  \"batchno\": \""
  	s += params[:batch_no]
  	s += "\",\n  \"description\": \""
  	s += params[:description]
  	s += "\",\n  \"drug_name\": \""
  	s += params[:drug_name]
  	s += "\",\n  \"drug_id\": "
  	s += params[:drug_id]
  	s += ",\n  \"expiry_date\": \""
  	s += params[:expiry_date]
  	s += "\",\n  \"MRP\": "
  	s += params[:MRP]
  	s += ",\n  \"producer\": \"org.nitk.drugtraceability.Trader#"
  	s += current_user.id.to_s
  	s += "\"\n}'"
  	system(s)
    st = "http://10.52.38.162:3000/api/org.nitk.drugtraceability.DrugBatch?access_token="+current_user.token
    @response = RestClient::Request.execute(
    method: :get,
    url: st,
    headers: {Accept: "application/json"}
    )
  	@s1 = s
  end

  def destroy
  end

  private
  def drugadd_params
      params.permit(:batch_no, :description, :drug_name, :drug_id, :expiry_date, :MRP)
  end
end
