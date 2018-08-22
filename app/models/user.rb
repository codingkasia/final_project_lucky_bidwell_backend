class User < ApplicationRecord
  has_secure_password
  has_many :user_guesses
  has_many :guesses, through: :user_guesses
  has_many :points
  # belongs_to :room

  # authenticate
  # password=  (password_digest column)
end
