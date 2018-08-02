class Room < ApplicationRecord
    has_many :guesses
    has_many :points
    
end
