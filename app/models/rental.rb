class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :start_date, :end_date, :first_name, :last_name, presence: true
end
