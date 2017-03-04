class CandyBar < ActiveRecord::Base
  has_many :images, as: :imageable, dependent: :destroy
  mount_uploader :image, CandyBarUploader
end
