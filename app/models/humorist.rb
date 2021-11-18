class Humorist < ApplicationRecord
  include PgSearch::Model
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :owner, class_name: 'User'
  has_one_attached :photo

  validates :name, presence: true
  validates :humor_type, presence: true, inclusion: { in: ["Noir", "Enfantin", "Tout Public", "Beauf"] }

  validates :public_target, presence: true, inclusion: { in: %w[Enfant Ado Adulte] }
  validates :price_per_hour, presence: true

  pg_search_scope :search_by_name_and_humor_type_and_public_target,
  against: [ :name, :humor_type, :public_target ],
  using: {
    tsearch: { prefix: true }
  }
end
