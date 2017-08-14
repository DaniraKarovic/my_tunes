class Tuner::FavoritesController < Tuner::TunerController
  def index
  @favorites = Favorite.all
  end

  def create
  end
  
  def destroy
  end

end
