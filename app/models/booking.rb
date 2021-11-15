class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :humorist

  validates :price, presence: true
  validates :start_date, :final_date, presence: true
end
