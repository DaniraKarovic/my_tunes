class AddUserIdAndSongIdToFavorite < ActiveRecord::Migration[5.0]
  def change
    add_reference :favorites, :user, foreign_key: true, index: true
    add_reference :favorites, :song, foreign_key: true, index: true
  end
end
