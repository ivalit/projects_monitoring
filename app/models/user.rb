class User < ActiveRecord::Base
  has_many :roles
  has_many :comments
end
