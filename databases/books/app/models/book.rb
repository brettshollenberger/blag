class Book < ActiveRecord::Base
  attr_accessible :author, :publication_date, :title
end
