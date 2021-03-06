class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :images, dependent: :destroy
 #has_many :resturants, through :reviews,
  #Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
