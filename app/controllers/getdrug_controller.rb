class GetdrugController < ApplicationController
  def new
  	st = "http://10.52.38.162:3000/api/org.nitk.drugtraceability.DrugBatch?access_token="+current_user.token
    @r = RestClient::Request.execute(
    method: :get,
    url: st,
    headers: {Accept: "application/json"}
    )
    @response = ActiveSupport::JSON.decode(@r)
  end
end
