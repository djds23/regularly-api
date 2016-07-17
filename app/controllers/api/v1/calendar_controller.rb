module Api
  module V1
    class CalendarController < ApplicationController
      def index
        render json: CalendarPresenter.new
      end
    end
  end
end

