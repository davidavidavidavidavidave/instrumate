class Booking < ApplicationRecord
  belongs_to :user
  validates :start_date, presence: true
end
