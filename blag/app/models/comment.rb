class Comment < ActiveRecord::Base
  attr_accessible :body, :user_id, :post_id
  validates :body, :length => { :in => 10..400 }
  belongs_to :user
  belongs_to :post
end
