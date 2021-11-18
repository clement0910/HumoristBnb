class Booking < ApplicationRecord
  include PgSearch::Model
  belongs_to :client, class_name: 'User'
  belongs_to :humorist
  before_validation :compute_price

  validates :price, presence: true
  validates :start_date, :final_date, presence: true

  pg_search_scope :search_by_name_and_humor_type_and_public_target,
  against: [ :name, :humor_type, :public_target ],
  using: {
    tsearch: { prefix: true }
  }

  def compute_price
    self.price = humorist.price_per_hour * ((final_date - start_date) / 60 / 60 / 24)
  end

  def starts_at
    self.start_date
  end

  def starts_at=(date)
    self.start_date=DateTime.strptime(date, '%m/%d/%Y')
  end

  def ends_at
    self.final_date
  end

  def ends_at=(date)
    self.final_date=DateTime.strptime(date, '%m/%d/%Y')
  end
end
