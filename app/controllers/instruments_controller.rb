class InstrumentsController < ApplicationController

      def index
        @instruments= Instrument.all
      end

      def show
        @instrument = Instrument.find(params[:id])
        @users = @instrument.users
      end
    end
