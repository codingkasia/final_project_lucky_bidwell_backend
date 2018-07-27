class UserGuess < ApplicationRecord 
  belongs_to :guess
  belongs_to :user
end
