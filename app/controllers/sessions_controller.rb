class SessionsController < ApplicationController

 def new
  render 'new'
 end
 
 def create
 user = User.find_by(email: params[:session][:email].downcase)
  if user && user.authenticate(params[:session][:password])
     sign_in user
     redirect_to user
    # fatte!
  else
     flash.now[:error] = 'Check your Username/Password again!'
     render 'new'
    #Error here
  end
 end
 
 def destroy
 sign_out
 redirect_to root_url
 end

end
