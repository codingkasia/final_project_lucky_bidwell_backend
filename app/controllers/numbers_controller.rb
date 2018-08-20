class NumbersController < ApplicationController

    def index
        numbers = Number.all
        render json: numbers
    end
  
    def create
         
    # guess = Guess.new(guess_params)
    number = Number.create(number_params)
    end
    
    def update 
       # def update 
  #   g = Guess.find(params[:id])
  #   g.update(bgColor: "orange")
  # end
  #  byebug
      number = Number.find(params[:id])
      number.update_attributes(number_params)
      render json: number
    end
  end
  
  private
  
  def number_params
    params.require(:number).permit(:id, :number, :room_id)
  end


