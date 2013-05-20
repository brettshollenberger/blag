class User < ActiveRecord::Base
  attr_accessible :password, :email
end
