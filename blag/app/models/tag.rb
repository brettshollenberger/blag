class Tag < ActiveRecord::Base
  attr_accessible :post_id, :tag
  validates :tag, :presence => true
  belongs_to :post
end
