class CalendarPresenter
  attr_reader :from,
              :to,
              :page,
              :count,
              :users,
              :query_class

  def initialize(
    from: Time.now,
    to: 1.month.ago,
    users: [],
    query_class: AlbumDueDate
  )

    @from = from
    @to = to
    @users = users
    @query_class = query_class
  end

  def as_json(options = nil)
    response
  end

  private

  def response
    due_dates = data.map do |album_due_date|
      user = album_due_date.user
      album = album_due_date.album
      artist = album&.artist

      {
        id: album_due_date.id,
        due_date: album_due_date.due_date,
        user: user_fields(user),
        album: album_fields(album)
      }
    end

    {
      due_dates: due_dates
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
      album_name: album&.name,
      artist: artist_fields(album&.artist),
      embeds: embed_fields_for_album(album),
    }
  end

  def artist_fields(artist)
    {
      id: artist&.id,
      name: artist&.name
    }
  end

  def embed_fields_for_album(album)
    emebed_fields = album&.album_embeds&.map do |embeds|
      {
        service_name: embeds.service_name,
        embed: embed.embed
      }
    end
    emebed_fields || []
  end

  def data
    relation = query_class
      .includes(:user, album: [:artist, :album_embed])
      .where('due_date <= ?', from)
      .where('due_date >= ?', to)

    if users.present?
      relation.where(user_id: users)
    end

    relation.order(due_date: :desc)
  end
end

