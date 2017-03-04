class Order < ActiveRecord::Base
  validates :email, presence: true
end
