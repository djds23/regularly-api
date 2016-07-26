require 'rails_helper'

describe AlbumArtistBuilder do

  let(:artist_name) { 'Frank Ocean' }
  let(:album_name) { 'Channel Orange' }

  describe '#build' do

    it 'builds the records with their relations' do
      artist = described_class.new(
        artist_name: artist_name,
        album_name: album_name
      ).build

      expect(artist).to be_an_instance_of(Artist)
      expect(artist.id).not_to be nil
      expect(artist.albums.first).to be_an_instance_of(Album)
      expect(artist.albums.first.id).not_to be nil
    end
  end

  describe '#add_embed' do

    let(:embed) { '<iframe>Hello, World!</iframe>' }
    let(:service_name) { 'google play music' }

    it 'builds the records with their relations' do
      builder = described_class.new(
        artist_name: artist_name,
        album_name: album_name
      )

      builder.add_embed(
        service_name: service_name,
        embed: embed
      )
      artist = builder.build
      embeds = artist.albums.first.album_embeds
      expect(embeds.first.embed).to eq embed
      expect(embeds.first.service_name).to eq service_name
    end
  end
end

