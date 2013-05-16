class Song < ActiveRecord::Base
  attr_accessible :album, :artist, :year, :title
end
