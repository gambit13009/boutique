class ApplicationController < ActionController::Base
	include CurrentCart
    before_action :set_cart
   

	def home

		ContactMailer.contact.deliver_now

	end	
	
end


