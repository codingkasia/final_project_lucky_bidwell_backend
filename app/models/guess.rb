class Guess < ApplicationRecord
    
    
    has_many :user_guesses
    has_many :users, through: :user_guesses
 
end
