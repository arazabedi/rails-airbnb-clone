class Listing < ApplicationRecord
  belongs_to :user
  validates :name, :price, :description, :breed, presence: true
end
