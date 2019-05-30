class CreateResturants < ActiveRecord::Migration[5.2]
  def change
    create_table :resturants do |t|

      t.timestamps
    end
  end
end
