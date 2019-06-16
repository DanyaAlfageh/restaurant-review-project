class AddResturantToImage < ActiveRecord::Migration[5.2]
  def change
    add_reference :images, :resturant, foreign_key: true
  end
end
