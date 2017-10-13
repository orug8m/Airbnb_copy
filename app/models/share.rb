class Share < ApplicationRecord
  has_many :rooms
  has_many :experiences
  has_many :restaurants
end
