class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  belongs_to :topic
    delegate :title, to: :topic, prefix: true, allow_nil: true

  def self.by_position
    order("position ASC")
  end

  def self.recent
    order("created_at DESC")
  end
end
