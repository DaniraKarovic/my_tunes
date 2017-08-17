class AddYoutubeLinkToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :youtubelink, :string
  end
end
