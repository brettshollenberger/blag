class Song < ActiveRecord::Base
  attr_accessible :album, :artist, :title, :year

  validates_presence_of :year
  validates_length_of :year, :minimum => 4, :maximum => 4
end
