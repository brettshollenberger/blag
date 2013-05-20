class HomeController < ApplicationController

	def index
		@songs =  Song.where(params[:song]) unless params.nil?
		@songs ||= Song.all
	end
end
