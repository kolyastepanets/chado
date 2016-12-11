class CandyBar < ActiveRecord::Base
  has_many :candy_bar_images
  mount_uploader :image, CandyBarUploader
end
