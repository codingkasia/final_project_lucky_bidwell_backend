class PointsController < ApplicationController

    def index
        points = Point.all
        render json: points
    end
  
    def create
        point = Point.create(point_params)
        render json: point
   
    end

    
    def update 
      point = Point.find(params[:id])
      point.update_attributes(point_params)
      render json: point
    end
  end
  
  private
  
  def point_params
    params.require(:point).permit(:id, :points, :user_id)
  end


