class Admin::GenresController < Admin::AdminController
	before_action :find_genre, { only: [:edit, :update, :show, :destroy] }

	def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
		@genre.user_id = current_user.id

    if @genre.save
      flash[:notice] = 'Genre created successfully.'
      redirect_to admin_genres_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @genre.update(genre_params)
      redirect_to admin_genre_path
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @genre.destroy
    flash[:notice] = 'Genre deleted successfully!'
    redirect_to admin_genres_path
  end

  private

  def genre_params
    params.require(:genre).permit(:name);
  end

  def find_genre
    @genre = Genre.find(params[:id])
  end
end
