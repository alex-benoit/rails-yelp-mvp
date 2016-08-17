# Restaurant Model
class Restaurant < ApplicationRecord
  # associations
  has_many :reviews, dependent: :destroy
  # validations
  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in:
    %w(chinese italian japanese french belgian) }
end
