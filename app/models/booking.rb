class Booking < ApplicationRecord
  include PgSearch::Model
  belongs_to :client, class_name: 'User'
  belongs_to :humorist
​
  validates :price, presence: true
  validates :start_date, :final_date, presence: true
​
  pg_search_scope :search_by_name_and_humor_type_and_public_target,
  against: [ :name, :humor_type, :public_target ],
  using: {
    tsearch: { prefix: true }
  }
end
