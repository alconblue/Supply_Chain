class SessionsController < ApplicationController
  def new
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
    redirect_to '/initiatetransaction/new'
  end

  def destroy
  end

  private
  def session_params
      params.permit(:token)
  end
end
