class Api::V1::GigsController < ApplicationController
  def index
    render json: User.all
    render json: Instrument.all
  end

  def show
    render json: User.find(params[:id])
  end
end
