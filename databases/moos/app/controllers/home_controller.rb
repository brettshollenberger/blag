class HomeController < ApplicationController

	def index
		@song_count = Song.all.count
	end
end
