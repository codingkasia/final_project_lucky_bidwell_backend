class Guess < ApplicationRecord
    
    
    has_many :user_guesses
    has_many :users, through: :user_guesses

    def userIds 
        self.users.map { |user| user.id}
    end
 
end
