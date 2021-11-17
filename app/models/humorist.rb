class Humorist < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :owner, class_name: 'User'
  has_one_attached :photo

  validates :name, presence: true
  validates :humor_type, presence: true, inclusion: { in: ["Noir", "Enfantin", "Tout Public", "Beauf"] }
  validates :public_target, presence: true, inclusion: {in: %w[Enfant Ado Adulte]}
  validates :price_per_hour, presence: true


end
