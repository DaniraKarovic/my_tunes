class Tuner::FavoritesController < Tuner::TunerController
  def index
    @favorites = Favorite.where(user_id: current_user.id)
  end

  def create
    @favorite = Favorite.create(user_id: current_user.id, song_id: params[:song_id])
    redirect_to tuner_songs_path, notice: 'This song is in your favorites now!'
  end

  def destroy
    @favorite = Favorite.where(user_id: current_user.id, song_id: params[:id]).first.destroy
    redirect_to tuner_songs_path, notice: 'Song is no longer in your favorites!'
  end

end
