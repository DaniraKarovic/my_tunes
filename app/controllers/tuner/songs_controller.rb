class Tuner::SongsController < Tuner::TunerController
	before_action :find_song, { only: [:show] }

	def index
  	@songs = Song.all
	end

  def show
		binding.pry
  end

  private

  def song_params
    params.require(:song).permit(:name, :duration, :album_id, :genre_id);
  end

  def find_song
    @song = Song.find(params[:id])
  end
end
