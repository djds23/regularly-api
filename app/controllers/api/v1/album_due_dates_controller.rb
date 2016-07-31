module Api
  module V1
    class AlbumDueDatesController < ApplicationController
      before_action :set_album_due_date, only: [:show, :update, :destroy]

      # GET /album_due_dates
      def index
        @album_due_dates = AlbumDueDate.all

        render json: @album_due_dates
      end

      # GET /album_due_dates/1
      def show
        render json: PostPresenter.new(params[:id])
      end

      # POST /album_due_dates
      def create
        @album_due_date = AlbumDueDate.new(album_due_date_params)

        if @album_due_date.save
          render json: @album_due_date, status: :created, location: @album_due_date
        else
          render json: @album_due_date.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /album_due_dates/1
      def update
        if @album_due_date.update(album_due_date_params)
          render json: @album_due_date
        else
          render json: @album_due_date.errors, status: :unprocessable_entity
        end
      end

      # DELETE /album_due_dates/1
      def destroy
        @album_due_date.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_album_due_date
          @album_due_date = AlbumDueDate.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def album_due_date_params
          params.require(:album_due_date).permit(:user_id, :album_id, :due_date)
        end
    end
  end
end
