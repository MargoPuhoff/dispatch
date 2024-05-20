class SessionsController < ApplicationController
  def new
  end

  def create
    dispatcher = Dispatcher.find_by(email: params[:session][:email].downcase)

    if dispatcher && dispatcher.authenticate(params[:session][:password])
      log_in dispatcher
      redirect_to dispatchers_url(@dispatcher)
    else 
      render 'new'
    end
    
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
