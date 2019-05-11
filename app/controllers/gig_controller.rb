class GigController < ApplicationController

  def index
    @users = User.all
  end
end
