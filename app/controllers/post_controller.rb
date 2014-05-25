class PostController < ApplicationController
	before_action:get_categories
	def index   
		if(params[:slug_url] != nil)
			category = PostCategory.find_by_slug_url(params[:slug_url])
			@posts = Post.where :post_category_id => category.id
		else
			@posts = Post.last(5)
		end
	end
	def show
		@post = Post.find_by_slug_url(params[:slug_url])
	end


	private 
	def get_categories
		@categories = PostCategory.all
	end

end
