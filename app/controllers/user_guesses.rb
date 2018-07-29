class UserGuessesController < ApplicationController

   def index
    userGuesses = UserGuess.all
    render json: userGuesses
  end

end