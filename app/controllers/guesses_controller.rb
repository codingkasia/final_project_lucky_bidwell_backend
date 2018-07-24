class GuessesController < ApplicationController
    def create
    guess = Guess.new(guess_params)
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
    params.require(:guess).permit(:value, :room_id, :color)
  end
end
