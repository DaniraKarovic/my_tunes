class Tuner::FavoritesController < Tuner::TunerController
  before_action :choose_song


  def index
    @favorites = Favorite.all
  end

  def create
  end


  def destroy
  end


  private

  def choose_song
    @song = Song.find(params[:song_id]
  end


end
