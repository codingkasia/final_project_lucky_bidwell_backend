class User < ApplicationRecord
  has_secure_password
  # has_many :guesses
  # belongs_to :room

  # authenticate
  # password=  (password_digest column)
end
