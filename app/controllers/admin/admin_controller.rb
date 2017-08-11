class Admin::AdminController < ApplicationController
  before_action :admin?

  def admin?
    unless current_user.admin? || current_user.superadmin?
      redirect_to root_path
    end
  end

  def dashboard

  end
end
