class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :small do
    process resize_to_fit: [60, 60]
  end

  version :thumb do
    process resize_to_fit: [130, 130]
  end

  version :main do
    process resize_to_fit: [375, 375]
  end

  version :big do
    process resize_to_fit: [700, 700]
  end
end
