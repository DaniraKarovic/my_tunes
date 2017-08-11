class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLE_USER = 0
  ROLE_ADMIN = 1
  ROLE_SUPERADMIN = 2

  has_many :songs
  has_many :albums
  has_many :artists


  def admin?
    role == ROLE_ADMIN
  end

  def superadmin?
    role == ROLE_SUPERADMIN
  end
end
