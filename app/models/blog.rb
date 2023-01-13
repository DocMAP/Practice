class Blog < ApplicationRecord
	class User < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  end
end
