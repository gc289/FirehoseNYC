class Pic < ActiveRecord::Base
  attr_accessible :hour, :emotion, :learned, :image

	mount_uploader :image, ImageUploader

	belongs_to :user
	# user is singular because there is just one user
  
end
