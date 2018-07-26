class UsersController < ApplicationController

  def show_user
    
    render json: _current_user
  end

  def index
    render json: User.all.limit(10)
  end
end