class SongsController < ApplicationController
	before_action :find_song, { only: [:edit, :update, :show, :destroy] }

	def index
  	@songs = Song.all
	end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      flash[:notice] = 'Song created successfully!'
      redirect_to songs_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to song_path
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @song.destroy
    flash[:notice] = 'Song deleted successfully!!'
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:name, :duration, :album_id);
  end

  def find_song
    @song = Song.find(params[:id])
  end
end
