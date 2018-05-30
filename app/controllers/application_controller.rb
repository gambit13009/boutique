class ApplicationController < ActionController::Base

	def home

		ContactMailer.contact.deliver_now

	end	
	
end


