class Admin::AdminController < ApplicationController
  before_action :admin?

  def admin?
    unless current_user.admin? || current_user.superadmin?
      redirect_to root_path
    end
  end

  def dashboard
    @registered_users_count = User.where(role:0).count
    @artists_count = Artist.all.count
    @songs_count = Song.all.count
    @genres_count = Genre.all.count
    @albums_count = Album.all.count
  end
end
