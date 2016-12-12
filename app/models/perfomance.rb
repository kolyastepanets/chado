class Perfomance < ActiveRecord::Base
  has_many :images, as: :imageable, dependent: :destroy
  validates :title, :text, :image, presence: true
  mount_uploader :image, PerfomanceUploader
end
