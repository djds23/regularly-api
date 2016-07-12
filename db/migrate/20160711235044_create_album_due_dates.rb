class CreateAlbumDueDates < ActiveRecord::Migration[5.0]
  def change
    create_table :album_due_dates do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :album, foreign_key: true
      t.datetime :due_date

      t.timestamps
    end
  end
end
