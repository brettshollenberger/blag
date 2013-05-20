class Song < ActiveRecord::Base
  attr_accessible :album, :artist, :year, :title
  validates :year, :format => { :with => /\d{4}\b/, :message => "Valid years are 4-digit numbers without commas" }

  def greeter
    return "Hello, I am an instance of #{self.class}"
  end
end
