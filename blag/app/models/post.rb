class Post < ActiveRecord::Base
  attr_accessible :body, :title
  validates :title, :length => { :in => 4..80 }
  validates :body, :presence => true
  belongs_to :author
  has_many :tags
  has_many :categories
  has_many :comments, :dependent => :destroy
end
