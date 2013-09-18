class Portrait < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	belongs_to :gallery
end
