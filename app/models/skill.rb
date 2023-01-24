class Skill < ApplicationRecord
	validates_presence_of :title

	def set_defaults
		self.badge ||= "https://place-hold.it/300x200"
	end
end
