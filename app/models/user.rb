class User < ApplicationRecord
  has_many :houses
  has_many :reservations

  validates :name, presence: true, uniqueness: { message: 'Must be unique' },
                   length: { in: 3..250, message: 'Must be a string of at least 3 characters' }
end
