class ScoresController < ApplicationController
   
    def index
        scores = Score.all
        render json: scores
    end
  
    def create
         
    # guess = Guess.new(guess_params)
    score= Score.create(score_params)
    end
    
    def update 
      score = Score.find(params[:id])
      score.update_attributes(score_params)
      render json: score
    end
  end
  
  private
  
  def score_params
    params.require(:score).permit(:id, :sumPoints)
  end
