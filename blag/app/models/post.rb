class Post < ActiveRecord::Base
  attr_accessible :body, :title
  validates :title, :length => { :in => 4..80 }
  validates :body, :presence => true
  belongs_to :author
  has_many :tags, :dependent => :destroy
  has_many :categories, :dependent => :destroy
  has_many :comments, :dependent => :destroy
end
