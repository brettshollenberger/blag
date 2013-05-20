class Author < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :password
  validates :name, :uniqueness => true
  validates :email, :format => { :with => /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/ }, :uniqueness => true
  validates :password, :length => { :in 2..20 }
  has_many :posts, :dependent => :destroy
end
