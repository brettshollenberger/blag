class Song < ActiveRecord::Base
  attr_accessible :album, :artist, :title, :year, :album_id, :artist_id

  validates_presence_of :year, :title
  validates_length_of :year, :is => 4

  belongs_to :artist
  belongs_to :album

  def self.between_years(start_yr, end_yr)
    self.where("year > ?", start_yr).where("year < ?", end_yr)
  end
end
