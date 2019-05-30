class AddNameToResturants < ActiveRecord::Migration[5.2]
  def change
    add_column :resturants, :name, :string
  end
end
