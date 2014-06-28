class PostCategory < ActiveRecord::Base
	has_many :categorizes
  has_many :posts, :through=>:categorizes
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
