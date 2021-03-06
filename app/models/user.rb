class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, length: { in: 8..32 }
  before_validation { email.downcase! }
  has_secure_password
  has_many :monologues
  has_many :favorites, dependent: :destroy
  mount_uploader :user_image, ImageUploader
end
