class RemoveUserFromAlbum < ActiveRecord::Migration[5.0]
  def up
    remove_column :albums, :user_id
  end

  def down
    add_column :albums, :user_id
  end
end
