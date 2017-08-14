class AddUserToPlaylist < ActiveRecord::Migration[5.0]
  def change
    add_reference :playlists, :user, foreign_key: true, index: true
  end
end
