class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.react
		where(subtitle: "React")
	end

	#same as above written differently
	scope :ruby_on_rails, ->{ where(subtitle: 'Ruby on Rails') }
end
