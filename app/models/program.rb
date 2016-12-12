class Program < ActiveRecord::Base
  has_many :images, as: :imageable, dependent: :destroy
  validates :title, :text, :image, presence: true
  mount_uploader :image, ProgramUploader
end
