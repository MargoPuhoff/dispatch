module DriverSessionsHelper

  def driver_log_in(driver)
    session[:driver_id] = driver.id
  end

  def current_driver
    @current_driver ||= Driver.find_by(id: session[:driver_id])
  end

  def driver_logged_in?
    !current_driver.nil?
  end

	def driver_log_out
		session.delete(:driver_id)
    @current_driver = nil
	end
end
