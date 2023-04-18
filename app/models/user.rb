class User < ApplicationRecord
  has_many :houses
  has_many :reservations

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  def admin?
    role == 'admin'
  end
end
