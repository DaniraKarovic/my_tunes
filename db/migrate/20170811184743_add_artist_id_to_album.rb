class AddArtistIdToAlbum < ActiveRecord::Migration[5.0]
  def change
    add_reference :albums, :artist, foreign_key: true, index: true
  end
end
