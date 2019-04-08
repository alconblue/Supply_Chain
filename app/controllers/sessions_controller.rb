class SessionsController < ApplicationController
  before_action :authenticate_user!
  def new
    @M=ManufacturerLicense.where(:user_id => current_user.id).where(:approved => 1);
    @C=CustomerLicense.where(:user_id => current_user.id).where(:approved => 1);
    @D=DistributorLicense.where(:user_id => current_user.id).where(:approved => 1);
    @P=PharmacyLicense.where(:user_id => current_user.id).where(:approved => 1);
  end

  def create
  	# auth = request.env["omniauth.auth"]
  	# if auth!=nil
  	# 	user = User.find_by_email(auth["email"])
  	# end	
    # if user.valid?
    #   session[:user_id] = user.id
    #   redirect_to request.env['omniauth.origin']
    # end
    current_user.token = params[:token]
    current_user.save
    redirect_to '/'
  end

  def destroy
  end

  private
  def session_params
      params.permit(:token)
  end
end
