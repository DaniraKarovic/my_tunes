class AddUserIdToSongsAlbumsArtist < ActiveRecord::Migration[5.0]
  def change
    add_reference :songs, :user, foreign_key: true, index: true
    add_reference :artists, :user, foreign_key: true, index: true
    add_reference :albums, :user, foreign_key: true, index: true
  end
end
