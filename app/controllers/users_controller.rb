class UsersController < ApplicationController

  def show_user
    
    render json: _current_user
  end

  def index
    render json: User.all.limit(10)
  end
end


# private

# def user_params
#   params.require(:user).permit(:id, :name, :password_digest, :email)
# end

   