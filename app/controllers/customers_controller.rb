class CustomersController < ApplicationController
	before_filter :authenticate_customer!
	def index
	
	end

end
