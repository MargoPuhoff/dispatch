class ApplicationController < ActionController::Base
  include SessionsHelper
	include DriverSessionsHelper
	before_action :check_user

	def check_dispathcer
		logged_in?
	end

	def check_driver
		driver_logged_in?
	end

	def check_user
		if (!check_dispathcer) && (!check_driver) 
			redirect_to controller: :home, action: :index 
		end
	end
end
