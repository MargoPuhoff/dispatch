class ApplicationController < ActionController::Base
  include SessionsHelper
	before_action :check_user

	def check_user

		unless logged_in?
			redirect_to controller: :home, action: :index
		end

	end
end
