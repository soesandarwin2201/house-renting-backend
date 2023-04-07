class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :house

  validates_presence_of :start_date, :end_date
end
