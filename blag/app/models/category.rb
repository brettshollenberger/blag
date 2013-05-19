class Category < ActiveRecord::Base
  attr_accessible :cat, :post_id
  validates :cat, :presence => true
  belongs_to :post
end
