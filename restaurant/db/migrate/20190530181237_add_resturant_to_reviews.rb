class AddResturantToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :resturant, foreign_key: true
  end
end
