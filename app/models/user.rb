class User < ActiveRecord::Base
  before_save { self.email = self.email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :location, allow_blank: true, length: { maximum: 0 }, on: :create
  validates :location, allow_blank: true, length: { maximum: 30 }, on: :update
  validates :profile, allow_blank: true, length: { maximum: 0 }, on: :create 
  validates :profile, allow_blank: true, length: { maximum: 50 }, on: :update
end