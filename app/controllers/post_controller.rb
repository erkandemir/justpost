class PostController < ApplicationController
	def index
		@posts = Post.order(created_at: :desc)
	end

	def show
		@post = Post.find_by_slug_url(params[:id])
	end

end
