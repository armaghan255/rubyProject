class ApplicationController < ActionController::Base
	http_basic_authenticate_with name:"Armaghan",password:"123"
	before_action :show_message

	private
	def show_message
		flash[:msg] =  "Testing before action"
	end
end
