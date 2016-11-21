class User < ActiveRecord::Base
  devise :database_authenticatable, :rememberable, :trackable, :validatable, :timeoutable, :lockable
end
