class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :house

  validates :start_date, :end_date, presence: true, availability: true
  validate :end_date_after_start_date
end
