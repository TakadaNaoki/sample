class User < ApplicationRecord
  validates :name, presence: true, length: { maximum:15 } 
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  validates :email, presence: true,
  format: { with: VALID_EMAIL_REGEX }
  VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[\d])\w{8,32}\z/
  validates :password, presence: true,
  format: { with: VALID_PASSWORD_REGEX }
  
  has_secure_password
  
  has_many :topics
end