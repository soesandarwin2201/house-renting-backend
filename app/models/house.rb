class House < ApplicationRecord
  belongs_to :user
  has_many :reservations

  # validates_presence_of :name, :image, :price, :location, :description, :bedroom_number
  # validates_numericality_of :price, :message=>"Please enter the number"
  # validates :description, length: { maximum: 500 }
  # validates :location, length: { maximum: 200 }
end
