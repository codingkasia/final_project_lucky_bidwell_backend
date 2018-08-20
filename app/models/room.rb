class Room < ApplicationRecord
    has_many :guesses
    has_many :points
    has_one :number
    
end
