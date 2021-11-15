class Humorist < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  validates :name, presence: true
  validates :humor_type, presence: true, inclusion: { in: ["Noir", "Enfantin", "Tout Public", "Beauf"] }
  validates :public_target, presence: true, inclusion: {in: %w[Enfant Ado Adulte]}
  validates :price_per_hour, presence: true
end
