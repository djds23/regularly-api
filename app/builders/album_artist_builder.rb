class AlbumArtistBuilder

  def initialize(album_name:, artist_name:)
    @album_name = album_name
    @artist_name = artist_name
    @embeds = []
  end

  def add_embed(service_name:, embed:)
    embeds << {
      service_name: service_name,
      embed: embed
    }
  end

  def build
    artist = Artist.find_or_create_by!(
      name: artist_name
    )
    album = artist.albums.find_or_create_by!(
      name: album_name
    )

    embeds.each do |embed_params|
      album.album_embeds.find_or_create_by!(
        service_name: embed_params[:service_name],
        embed: embed_params[:embed]
      )
    end

    artist
  end

  private

  attr_reader :album_name,
              :artist_name,
              :embeds
end
