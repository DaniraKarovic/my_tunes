class Tuner::FavoritesController < Tuner::TunerController
  def index
    @favorites = Favorite.where(user_id: current_user.id)
  end

  def create
    @favorite = Favorite.create(user_id: current_user.id, song_id: params[:song_id])
  end

  def destroy
    @favorite = Favorite.find(parmas[:id]).destroy
  end

end
