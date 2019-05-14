class GigController < ApplicationController

  def index
    @users = User.all
    @user_sample = @users.sample(1)
  end
end
