class AdditionalService < ActiveRecord::Base
  mount_uploader :image, AdditionalServiceUploader
end
