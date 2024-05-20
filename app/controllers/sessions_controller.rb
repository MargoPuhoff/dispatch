class SessionsController < ApplicationController
  skip_before_action :check_user

  def new; end

  def create
    dispatcher = Dispatcher.find_by(email: params[:session][:email].downcase)

    if dispatcher && dispatcher.authenticate(params[:session][:password])
      log_in dispatcher
      redirect_to treks_path
    else
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to controller: :home, action: :index
  end
end
