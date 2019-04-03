class InitiatetransactionController < ApplicationController
  def create
    s = "curl 'http://10.52.38.162:3000/api/org.nitk.drugtraceability.TradeInitiate?access_token="
  	s += current_user.token
  	s += "' -H 'Accept: application/json' --compressed -H 'Content-Type: application/json' --data '{\n  \"$class\": \"org.nitk.drugtraceability.TradeInitiate\",\n  "
  	s += " \"commodity\": \"org.nitk.drugtraceability.DrugBatch#"
    s += params[:commodity]
    s += "\",\n  \"newOwner\": \"org.nitk.drugtraceability.Trader#"
  	s += params[:newOwner]
  	s += "\"\n}'"
  	system(s)
  	@s2 = s
  end

  def new
  end

  def destroy
  end

  private
  def initiatetransaction_params
      params.permit(:commodity, :newOwner)
  end
end
