class Booking < ApplicationRecord
  belongs_to :user_id
  belongs_to :machine_id
end
