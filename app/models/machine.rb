class Machine < ApplicationRecord
  FUNCTION = ["Raclette and grill", "Raclette, cheesy potatoes, fondue, tartiflette, hot box, and cheese crepe", "Raclette, grill stone, crepe maker", "Raclette and grill stone", "Raclette, grill, and plancha"]
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :function, inclusion: { in: FUNCTION }
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description_and_brand,
    against: [:name, :description, :brand],
    using: {
      tsearch: { prefix: true }
      }

end
