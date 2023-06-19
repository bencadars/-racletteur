class User < ApplicationRecord
  has_many :machines
  has_many :bookings
end
