class Resturant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :images, dependent: :destroy
  #  has_many :users, through :reviews
end
