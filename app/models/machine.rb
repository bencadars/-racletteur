class Machine < ApplicationRecord
  belongs_to :user_id
  has_many :bookings
end
