# Review Model
class Review < ApplicationRecord
  # associations
  belongs_to :restaurant
  # validations
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
