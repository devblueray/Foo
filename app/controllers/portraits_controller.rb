class PortraitsController < ApplicationController
	def index
		@gallery = Gallery.where(customer_id: current_customer.id)
		@portraits = Portrait.where(gallery_id: params[:gallery_id])
	end
end
