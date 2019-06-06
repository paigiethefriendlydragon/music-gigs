class UsersController < Devise::RegistrationsController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @users = User.all
  end

  def new
    @user = User.new
    @instruments = Instrument.all
  end


  private

  def new_user_ params
    params.require(:users).permit(:first_name, :last_name, :city, :state, :zip, :description, :rate_per_gig, :rate_per_hour, :soundcloud_link, :recordings_link, :profile_photo, :instrument)
  end

end
