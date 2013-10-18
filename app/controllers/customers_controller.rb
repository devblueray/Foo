class CustomersController < ApplicationController
	before_filter :authenticate_customer!, :except => [:show]

	def index
	end

	def show
		redirect_to root_path
	end

end
