module Api
  module V1
    class CalendarController < ApplicationController
      def index
        presenter = CalendarPresenter.new(
          from: params.fetch(:from, Time.now.next_week.monday),
          to: params.fetch(:to, 3.months.ago)
        )
        render json: presenter
      end

      def album_params
        params.permit(:to, :from)
      end
    end
  end
end

