class User < ActiveRecord::Base
  before_save { self.email = self.email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
                    
   before_save { self.locaton = self.locaton.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_LOCATION_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :locaton, presence: true, length: { maximum: 255 },
                    format: { with: VALID_LOCATION_REGEX },
                    uniqueness: { case_sensitive: false }
                    
                    
   before_save { self.profile = self.profile.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_PROFILE_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :profile, presence: true, length: { maximum: 255 },
                    format: { with: VALID_PROFILE_REGEX },
                    uniqueness: { case_sensitive: false }
                    
                    
  has_secure_password
end