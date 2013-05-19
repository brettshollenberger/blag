class Comment < ActiveRecord::Base
  attr_accessible :body
  validates :body, :length => { :in => 10..400 }
  belongs_to :user
  belongs_to :post
end
