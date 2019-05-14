class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end


  private

  def new_user_ params
    params.require(:users).permit(:first_name, :last_name, :city, :state, :zip, :description, :rate_per_gig, :rate_per_hour, :soundcloud_link, :recordings_link, :profile_photo)
  end

end
