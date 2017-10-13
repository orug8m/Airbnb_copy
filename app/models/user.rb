class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :rooms, through: :users_rooms
  has_many :users_rooms
  has_many :experiences, through: :users_experiences
  has_many :users_experiences
  has_many :restaurants, through: :users_restaurants
  has_many :users_restaurants
  has_many :room_books
  has_many :experience_books
  has_many :restaurant_books
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
