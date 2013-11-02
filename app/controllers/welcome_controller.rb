class WelcomeController < ApplicationController
	#before_filter :authenticate_user!, :except => [:index, :show]
	 before_filter :authenticate_customer! 
	def index
	  @galleries = Gallery.where(customer_id: current_customer.id)
	  
  end
end
