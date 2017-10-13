class Room < ApplicationRecord
  belongs_to :share
  belongs_to :host
  has_many :room_images
  has_many :users, through: :users_rooms
  has_many :users_rooms
end
