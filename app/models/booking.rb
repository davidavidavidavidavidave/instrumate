class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :instrument
  validates :start_date, presence: true
end
