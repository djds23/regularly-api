task :backfill_albums => :environment do
  # only see after calendar has been created
  add = AlbumDueDate.find_or_create_by(due_date: Time.parse('2016/06/20 00:00:00 -0000')) # Luis, 6/20/2016
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'Frank Ocean', artist_name: 'Channel Orange')
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A392p3shh2jkxUxY2VHvlH8" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end


  add = add.next # Liz, 6/27/2016
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'V', artist_name: 'Wavves')
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A592d2gtYO83FF8awSzrQZE" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next # Joe, 7/04/2016
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'When Your Heartstrings Break', artist_name: 'Beulah')
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A20aXIU81UUF1K8KVRTy58D" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end


  add = add.next # Vicky, 7/11/2016
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'Carnavas', artist_name: 'Silversun Pickups')
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A2Qr40p1sv6NYrf9NPehsrO" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end


  add = add.next # Ryan, 7/18/2016
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'Vignetting The Compost', artist_name: 'Bibio')
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A7ne7urIphw4b0lewThe6WJ" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next # Ingamar, 7/25/2016
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'In Light', artist_name: 'Small Color')
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A1dsnOr75xqEcNyCF9oHQz4" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'IV', artist_name: 'BadBadNotGood')
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A6uqcZu1it9k6zz3UVKZzPo" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'Take This To Your Grave', artist_name: 'Fall Out Boy')
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A7l4nnHG7upOnUM4WvAjToY" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'Tragic Kingdom', artist_name: 'No Doubt')
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A3VekjWskUut57hx6W9wqL8" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'All Hail West Texas', artist_name: 'The Mountain Goats')
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A0SSMTJHDokOaKuaLaeSAYd" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'From Shores of Sleep', artist_name: 'Musée Mécanique')
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A6VGXR5aJmggdn00K8B5TQ2" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end


  add = add.next
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'Dog Problems', artist_name: 'The Format')
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A6VPLqG06SlXc1FzVzzcuZB" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'Jesu/Sun Kil Moon', artist_name: 'Jesu/Sun Kil Moon')
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A4JbhBnmbvpBnCmaCBqtUM6" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: '3.377083333333333', artist_name: 'Antarctica')
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A7jb9ZRdjuBA31Nx2wA7XJX" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'Ten$ion', artist_name: 'Die Antwoord')
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A4kqZmdRJUfZQxt2MDF0NDr" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'Flying Lessons', artist_name: "Fool\'s Gold")
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A4Ti4L10Yqaki5hRrgtKaaz" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'Warning', artist_name: "Green Day")
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A3ifIxGNsG1XmLdoanRRIWB" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'Acid Rap', artist_name: "Chance The Rapper")
    builder.add_embed(
      service_name: 'soundcloud',
      embed: '<iframe width="300" height="380" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/playlists/5278265&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'My Dark Beautiful Twisted Fantasy', artist_name: "Kanye West")
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A20r762YmB5HeofjMCiPMLv" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: '22, A Million', artist_name: "Bon Iver")
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A1PgfRdl3lPyACfUGH4pquG" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end

  add = add.next
  if add.album.blank?
    builder = AlbumArtistBuilder.new(album_name: 'At Carnegie Hall', artist_name: "Thelonious Monk Quartet With John Coltrane")
    builder.add_embed(
      service_name: 'spotify',
      embed: '<iframe src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A3x38mYlwkm6L6vYIn0Hzqk" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
    )
    artist = builder.build
    add.album = artist.albums.first
    add.save!
  end
end
