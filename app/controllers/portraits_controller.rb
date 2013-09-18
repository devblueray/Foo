class PortraitsController < ApplicationController
	def index
		@gallery =  Gallery.find(params[:gallery_id])
		@portraits = @gallery.portraits
		#@gallery = Gallery.where(customer_id: current_customer.id)
		#@portraits = Portrait.where(gallery_id: params[:gallery_id])
	end
	
	def can_see_portraits?
		gallist = Gallery.where(customer_id: current_customer.id).pluck(:id).to_a
		redirect_to root_path unless current_customer.id == params[:customer_id].to_i && gallist.include?(params[:gallery_id].to_i)
	end
	helper_method :can_see_portraits?
end
