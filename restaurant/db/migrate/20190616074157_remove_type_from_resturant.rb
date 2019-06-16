class RemoveTypeFromResturant < ActiveRecord::Migration[5.2]
  def change
    remove_column :resturants, :type, :string
  end
end
