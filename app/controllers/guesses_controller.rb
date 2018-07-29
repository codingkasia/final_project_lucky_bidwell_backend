class GuessesController < ApplicationController
  
    def create
      
    # guess = Guess.new(guess_params)
    guess = Guess.create(guess_params)
    user_guess = UserGuess.create(guess: guess, user: User.find(params[:user_id][0]))
    # guess.users = User.find() 
    # //user?
    room = Room.find(guess_params[:room_id])
    if guess.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        GuessSerializer.new(guess)
      ).serializable_hash
      GuessesChannel.broadcast_to room, serialized_data
      head :ok
    end
  end
  
  private
  
  def guess_params
    params.require(:guess).permit(:value, :room_id, :bgColor, :lucky, :user_id)
  end
end
