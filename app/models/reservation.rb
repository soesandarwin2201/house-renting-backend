class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :house

  validates :start_date, :end_date, presence: true
end
