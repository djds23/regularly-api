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
    
  end
  
  private

  def response
    base_response = {}
    data.each do |album_due_date|
      user = album_due_date.user
      album = album_due_date.album
      artist = album.artist

      {
        due_date: album_due_date.due_date,
        user: {
          id: user.id,
          username: user.username,
        },
        album: {
          id: album.id,
          name: album.name,
          embeds: album_embeds.map
        }
      }
    end
  end

  def data
    relation = query_class
      .includes(:user, album: [:artist, :album_embed])
      .where('due_date <= ?', from)
      .where('due_date >= ?', to)

    if users.present?
      relation.where(user_id: users)
    end

    relation
  end
end

