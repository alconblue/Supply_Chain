class TraderaddController < ApplicationController
  def create
  	s = "curl 'http://10.52.38.162:3000/api/org.nitk.drugtraceability.Trader?access_token="
  	s += current_user.token
  	s += "' -H 'Accept: application/json' --compressed -H 'Content-Type: application/json' --data '{\n  \"$class\": \"org.nitk.drugtraceability.Trader\",\n  \"tradeId\": \""
  	s += params[:tradeId]
  	s += "\",\n  \"firstName\": \""
  	s += params[:firstName]
  	s += "\",\n  \"lastName\": \""
  	s += params[:lastName]
  	s += "\",\n  \"access\": \""
  	s += params[:access]
  	s += "\"\n}'"
  	system(s)
    st = "http://10.52.38.162:3000/api/org.nitk.drugtraceability.Trader?access_token="+current_user.token
    @response = RestClient::Request.execute(
    method: :get,
    url: st,
    headers: {Accept: "application/json"}
    )
  	@s1 = s
  end

  def new
  end

  def destroy
  end

  private
  def drugadd_params
      params.permit(:tradeId, :firstName, :lastName, :access)
  end
end
