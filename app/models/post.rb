class Post < ActiveRecord::Base
  has_many :categorizes
  has_many :post_categories, :through=>:categorizes
  accepts_nested_attributes_for :post_categories
 


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
