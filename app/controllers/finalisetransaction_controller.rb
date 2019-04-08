class FinalisetransactionController < ApplicationController
  def create
    s = "curl 'http://10.52.38.162:3000/api/org.nitk.drugtraceability.TradeFinalise?access_token="
  	s += current_user.token
  	s += "' -H 'Accept: application/json' --compressed -H 'Content-Type: application/json' --data '{\n  \"$class\": \"org.nitk.drugtraceability.TradeFinalise\",\n  "
  	s += " \"commodity\": \"org.nitk.drugtraceability.DrugBatch#"
    s += params[:commodity]
    s += "\",\n  \"newOwner\": \"org.nitk.drugtraceability.Trader#"
  	s += current_user.id.to_s
  	s += "\"\n}'"
  	system(s)
    @s3 = s
    redirect_to '/'
  end

  def new
  end

  def destroy
  end

  private
  def finalisetransaction_params
      params.permit(:commodity, :newOwner)
  end
end
