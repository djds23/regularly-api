class AlbumEmbedsController < ApplicationController
  before_action :set_album_embed, only: [:show, :update, :destroy]

  # GET /album_embeds
  def index
    @album_embeds = AlbumEmbed.all

    render json: @album_embeds
  end

  # GET /album_embeds/1
  def show
    render json: @album_embed
  end

  # POST /album_embeds
  def create
    @album_embed = AlbumEmbed.new(album_embed_params)

    if @album_embed.save
      render json: @album_embed, status: :created, location: @album_embed
    else
      render json: @album_embed.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /album_embeds/1
  def update
    if @album_embed.update(album_embed_params)
      render json: @album_embed
    else
      render json: @album_embed.errors, status: :unprocessable_entity
    end
  end

  # DELETE /album_embeds/1
  def destroy
    @album_embed.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album_embed
      @album_embed = AlbumEmbed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def album_embed_params
      params.require(:album_embed).permit(:embed, :album_id)
    end
end
