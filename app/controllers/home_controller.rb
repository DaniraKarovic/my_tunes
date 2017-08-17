class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end

  def songs
  end

  def contact

  end

end
