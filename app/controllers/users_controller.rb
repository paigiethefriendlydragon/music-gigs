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

  def create
     user_email = params[:session][:email]
     user_password = params[:session][:password]
     user = user_email.present? && User.find_by(email: user_email)
     if user.valid_password?(user_password)
       sign_in user, store: true
       render json: user, status: 200, location: [:api, user]
     else
       render json: { errors: "Invalid email or password" }, status: 422
     end
  end

  def edit
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)

    else
      render 'edit'
  end
end


  private

  def new_user_ params
    params.require(:users).permit(:first_name, :last_name, :city, :state, :zip, :description, :rate_per_gig, :rate_per_hour, :soundcloud_link, :recordings_link, :profile_photo, :instrument)
  end

  def sign_in_ params
    params.require(:users).permit(:email, :encrypted_password)
  end

end
