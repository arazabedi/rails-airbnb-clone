class Listing < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  validates :name, :price, :description, :breed, presence: true
end
