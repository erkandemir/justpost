class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, :through => :post_categories
  accepts_nested_attributes_for :categories
 
	before_save :before_save

	private
	def before_save
    	self.slug_url = self.title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  	end
  	
  	public 
  	def to_param  # overridden   
    	slug_url
  	end
end
