class PicsController < ApplicationController
	before_filter :authenticate_user!, :only => [:new, :create]
	#requires authenticated user for new and create
	def index
		@pics = Pic.all
	end

	def new
		@pic = Pic.new
	end

	def create
		@pic = Pic.create(params[:pic])
		redirect_to pics_path
	end
	#action above is what happens when the user hits "Submit"
end
