class Room < ApplicationRecord
  belongs_to :host
  has_many :room_images
  has_many :room_books
end
