class PostController < ApplicationController
	before_action:get_categories
	def index   
		if(params[:slug_url] != nil)
			category = Category.find_by_slug_url(params[:slug_url])
			@posts = Post.joins(:categories).where('categories.id' => category.id)
		else
			@posts = Post.last(5)
		end
		puts "dsfsdf"
	end

	def show
		@post = Post.find_by_slug_url(params[:slug_url])
	end

	private 
	def get_categories
		@categories = Category.all
	end

end
