class User < ActiveRecord::Base
  attr_accessible :email, :password, :username
  validates :username, :uniqueness => true, :length => { :in => 3..30 }
  validates :password, :presence => true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, :uniqueness => true
  has_many :comments, :dependent => :destroy

end
