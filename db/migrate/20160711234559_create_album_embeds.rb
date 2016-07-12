class CreateAlbumEmbeds < ActiveRecord::Migration[5.0]
  def change
    create_table :album_embeds do |t|
      t.text :embed
      t.belongs_to :album, foreign_key: true

      t.timestamps
    end
  end
end
