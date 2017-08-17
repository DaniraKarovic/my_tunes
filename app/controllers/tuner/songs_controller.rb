class Tuner::SongsController < Tuner::TunerController
	before_action :find_song, { only: [:show] }

	def index
		if params[:search].nil?
			@songs = Song.all
		else
  		@songs = Song.where("name like ?", "%"+params[:search]+"%")
		end
	end

  def show
		
  end

  private

  def song_params
    params.require(:song).permit(:name, :duration, :album_id, :genre_id);
  end

  def find_song
    @song = Song.find(params[:id])
  end
end
