class Pic < ActiveRecord::Base
  attr_accessible :hour, :emotion, :learned, :image

mount_uploader :image, ImageUploader
  
end
