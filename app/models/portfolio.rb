class Portfolio < ApplicationRecord
	has_many :technologies, dependent: :destroy
	accepts_nested_attributes_for :technologies,
								 reject_if: lambda { |attrs| attrs['name'].blank? }

	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.react
		where(subtitle: "React")
	end

	def self.by_position
		order("position ASC")
	end

	#same as above written differently
	scope :ruby_on_rails, ->{ where(subtitle: 'Ruby on Rails') }

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "https://place-hold.it/300x200"
		self.thumb_image ||= "https://place-hold.it/356x280"
	end
end
