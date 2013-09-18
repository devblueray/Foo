class GalleriesController < ApplicationController
	def index
		@galleries = Gallery.where(customer_id: current_customer.id)
	end
end
