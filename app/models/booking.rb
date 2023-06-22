class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :machine
  validates :start_date, presence: { message: "must be provided" }
  validates :end_date, presence: { message: "must be provided" }
  validates :status, inclusion: { in: ["Pending", "Rejected", "Accepted"] }
end
