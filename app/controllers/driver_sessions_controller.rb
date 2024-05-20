class DriverSessionsController < ApplicationController
  skip_before_action :check_user

  def new; end

  def create
    driver = Driver.find_by(email: params[:session][:email].downcase)

    if driver && driver.authenticate(params[:session][:password])
      driver_log_in driver
      redirect_to treks_path
    else
      render 'new'
    end
  end

  def destroy
    driver_log_out
    redirect_to controller: :home, action: :index
  end
end
