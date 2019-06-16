class AddDescAndTypeToResturant < ActiveRecord::Migration[5.2]
  def change
    add_column :resturants, :type, :string
    add_column :resturants, :description, :string
  end
end
