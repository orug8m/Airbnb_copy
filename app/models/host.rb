class Host < ApplicationRecord
  has_many :rooms
  has_many :restaurants
  has_many :experiences
end
