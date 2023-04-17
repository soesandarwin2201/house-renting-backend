class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :house

  validates :start_date, :end_date, presence: true
  validates :city, presence: true, length: { minimum: 3, message: 'City must have 3 or more characters' }
end
