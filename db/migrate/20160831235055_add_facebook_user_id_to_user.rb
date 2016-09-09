class AddFacebookUserIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :facebook_id, :string, null: true, index: true
  end
end
