class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update_attributes(user_params)
    render json: user
  end

  def destroy
   User.destroy(params[:id])
  end

  private 

  def user_params
    params.require(:user).permit(:first_name, :username, :password, :email)
  end

end


