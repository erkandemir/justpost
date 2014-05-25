class Post < ActiveRecord::Base
	validates_uniqueness_of :slug_url
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
