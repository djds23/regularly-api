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

