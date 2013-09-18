class GalleriesController < ApplicationController
	before_filter :authenticate_customer!
	
	def index
		@galleries = Gallery.where(customer_id: current_customer.id)
	end

	def can_see_gallery?
		redirect_to root_path unless current_customer.id == params[:customer_id].to_i 
	end
  helper_method :can_see_gallery?
end
