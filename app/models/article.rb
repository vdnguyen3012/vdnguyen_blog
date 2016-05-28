class Article < ActiveRecord::Base
	has_many :comments

	def self.search search
		if search
			where("title ILIKE ?", "%#{search}%")
		else
			all
		end
	end
end
