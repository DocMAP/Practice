class Portfolio < ApplicationRecord
	has_many :technologies
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.react
		where(subtitle: "React")
	end

	#same as above written differently
	scope :ruby_on_rails, ->{ where(subtitle: 'Ruby on Rails') }

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "https://place-hold.it/300x200"
		self.thumb_image ||= "https://place-hold.it/200x100"
	end
end
