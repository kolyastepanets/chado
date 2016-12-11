class CandyBarImage < ActiveRecord::Base
  belongs_to :candy_bar
  mount_uploader :file, CandyBarImageUploader
end
