class User < ApplicationRecord
  has_many :houses
  has_many :reservations

  validates_presence_of :name
end
