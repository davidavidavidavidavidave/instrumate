class Instrument < ApplicationRecord
  belongs_to :user_id
  has_many :bookings
end
