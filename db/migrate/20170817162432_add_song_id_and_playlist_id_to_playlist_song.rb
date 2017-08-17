class AddSongIdAndPlaylistIdToPlaylistSong < ActiveRecord::Migration[5.0]
  def change
    add_reference :playlist_songs, :playlist, foreign_key: true, index: true
    add_reference :playlist_songs, :song, foreign_key: true, index: true
  end
end
