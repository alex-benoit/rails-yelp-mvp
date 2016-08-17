# Review Model
class Review < ApplicationRecord
  # associations
  belongs_to :restaurant
  # validations
  validates :content, :rating, presence: true
end
