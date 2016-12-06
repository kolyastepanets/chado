class Program < ActiveRecord::Base
  validates :title, :text, :image, presence: true
  mount_uploader :image, ProgramUploader
end
