class Tuner::PlaylistSongsController < Tuner::TunerController

  def create
    @playlist_song = PlaylistSong.create(playlist_id: params[:playlist_id], song_id: params[:song_id])
    redirect_to tuner_playlist_path(params[:playlist_id]), notice: 'This song is in your playlist!'
  end

  def destroy
    @playlist_song = PlaylistSong.find(params[:id])
    @playlist_song.destroy
    redirect_to tuner_playlist_path(@playlist_song.playlist), notice: 'Song is no longer in your playlist!'
  end
end
