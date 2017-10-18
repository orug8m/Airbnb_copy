class Room < ApplicationRecord
  has_many :room_images
  has_many :users, through: :users_rooms
  has_many :users_rooms
  has_many :room_books
  belongs_to :host
end
