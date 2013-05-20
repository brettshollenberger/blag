class Artist < ActiveRecord::Base
  attr_accessible :name
  has_many :songs, :dependent => :destroy
  has_many :albums, :dependent => :destroy
end
