class AddAlbumIdToSong < ActiveRecord::Migration[5.0]
  def change
    add_reference :songs, :album, foreign_key: true, index: true
  end
end
