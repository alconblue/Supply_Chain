class WalletaddController < ApplicationController
  def create
  	s = "curl 'http://10.52.38.162:3000/api/wallet/import?access_token="
  	s += current_user.token
  	s += "?name="
  	s += params[:name]
  	s += "' -H 'Accept: application/json' --compressed -H 'Content-Type: multipart/form-data' {\"type\":\"formData\"}"
  	s += "\"\n}'"
  	system(s)
    # st = "http://10.52.38.162:3000/api/org.nitk.drugtraceability.DrugBatch?access_token="+current_user.token
    # @response = RestClient::Request.execute(
    # method: :get,
    # url: st,
    # headers: {Accept: "application/json"}
    # )
  	@s1 = s
  end

  def new
  end

  def destroy
  end

  private
  def drugadd_params
      params.permit(:card, :name)
  end
end
