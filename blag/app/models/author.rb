class Author < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :password
  validates :name, :length => { :in => 2..40 }, :uniqueness => true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, :uniqueness => true
  validates :bio, :length => { :maximum => 500 }, :allow_blank => true
  validates :password, :presence => true
  has_many :posts, :dependent => :destroy
end
