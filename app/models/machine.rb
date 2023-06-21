class Machine < ApplicationRecord
  FUNCTION = ["Raclette and grill", "Raclette, cheesy potatoes, fondue, tartiflette, hot box, and cheese crepe", "Raclette, grill stone, crepe maker", "Raclette and grill stone", "Raclette, grill, and plancha"]
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :function, inclusion: { in: FUNCTION }
  has_one_attached :photo
end
