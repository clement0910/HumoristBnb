class Booking < ApplicationRecord
  belongs_to :client, class_name: 'User'
  belongs_to :humorist

  validates :price, presence: true
  validates :start_date, :final_date, presence: true
end
