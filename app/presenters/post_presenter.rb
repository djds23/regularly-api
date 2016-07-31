class PostPresenter
  attr_reader :album_due_date

  def initialize(album_due_date_id)
    @album_due_date = AlbumDueDate.find album_due_date_id
  end

  def as_json(options = nil)
    response
  end

  private

  def response
    user = album_due_date.user
    album = album_due_date.album
    artist = album&.artist

    {
      id: album_due_date.id,
      dueDate: album_due_date.due_date,
      user: user_fields(user),
      album: album_fields(album),
      artist: artist_fields(album&.artist),
      embeds: embed_fields_for_album(album),
    }
  end

  def user_fields(user)
    {
      id: user.id,
      username: user.username,
    }
  end

  def album_fields(album)
    {
      id: album&.id,
      name: album&.name,
    }
  end

  def artist_fields(artist)
    {
      id: artist&.id,
      name: artist&.name
    }
  end

  def embed_fields_for_album(album)
    emebed_fields = album&.album_embeds&.map do |embed|
      {
        serviceName: embed.service_name,
        embed: embed.embed
      }
    end
    emebed_fields || []
  end


end
