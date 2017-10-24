class Room < ApplicationRecord
  belongs_to :host
  has_many :room_images
  has_many :room_books
  has_many :tags, through: :room_tags
  has_many :room_tags
end
