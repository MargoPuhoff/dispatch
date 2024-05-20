class HomeController < ApplicationController
	skip_before_action :check_user, only: [:index]

	def index
		
	end
end
