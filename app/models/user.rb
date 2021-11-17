class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_create :set_default_value

  before_save :update_name!

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, foreign_key: 'client_id'
  has_many :humorists, foreign_key: 'owner_id'
  has_one_attached :photo

  def set_default_value
    self.username = "#{first_name.downcase}-#{last_name.first.downcase}" if username.empty?
    photo&.attach(io: File.open(Rails.root.join('app', 'assets', 'images',
                                                'default-image.png')), filename: 'default-image.png',
                  content_type: 'image/png')
  end

  def update_name!
    first_name.capitalize!
    last_name.capitalize!
  end
end
