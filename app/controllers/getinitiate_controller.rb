class GetinitiateController < ApplicationController
  def new
  	st = "http://10.52.38.162:3000/api/org.nitk.drugtraceability.TradeInitiate?access_token="+current_user.token
    @response = RestClient::Request.execute(
    method: :get,
    url: st,
    headers: {Accept: "application/json"}
    )
  end
end
