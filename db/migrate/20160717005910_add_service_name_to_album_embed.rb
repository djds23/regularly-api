class AddServiceNameToAlbumEmbed < ActiveRecord::Migration[5.0]
  def change
    add_column :album_embeds, :service_name, :string, null: false, default: 'spotify'
  end
end
