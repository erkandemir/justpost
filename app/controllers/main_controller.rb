class MainController < ApplicationController
	def index
		@categories = PostCategory.all
	end
end
