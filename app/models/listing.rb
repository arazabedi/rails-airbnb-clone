class Listing < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  validates :name, :photo, :price, :description, :breed, presence: true
end
