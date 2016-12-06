class Perfomance < ActiveRecord::Base
  validates :title, :text, :image, presence: true
  mount_uploader :image, PerfomanceUploader
end
